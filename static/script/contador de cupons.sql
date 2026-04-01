-- ===========================================
-- RTGM120 – Relatório Quantidade de NFC-e
-- ===========================================

DECLARE @DATAINI DATE = '2025-09-01';
DECLARE @DATAFIN DATE = '2025-09-30';

-- ===========================================
-- CTE: Cupons por filial, dia e série
-- ===========================================
WITH Cupons AS (
    SELECT 
        codLoja,
        CAST(dataEmissao AS DATE) AS data_movto,
        numSerieImpFiscal,
        COUNT(*) AS QTDE_CUPONS,        -- Conta cupons únicos
        SUM(valorTotal) AS TOTAL_VENDA  -- Soma total das vendas
    FROM tblpdvcupom
    WHERE CAST(dataEmissao AS DATE) BETWEEN @DATAINI AND @DATAFIN
      AND statusNfce = 'A'
      AND cupomCancelado = 'N'
    GROUP BY codLoja, CAST(dataEmissao AS DATE), numSerieImpFiscal
),

-- ===========================================
-- CTE: Total de custo por filial, dia e série
-- ===========================================
Custo AS (
    SELECT 
        c.codLoja,
        CAST(c.dataEmissao AS DATE) AS data_movto,
        c.numSerieImpFiscal,
        SUM(ci.quantidade * ci.valorUnitario) AS TOTAL_CUSTO
    FROM tblpdvcupom c
    INNER JOIN tblPDVCupomItem ci
        ON c.numSerieImpFiscal = ci.numSerieImpFiscal
        AND c.numCRO = ci.numCRO
        AND c.dataEmissao = ci.dataEmissao
        AND c.numCupom = ci.numCupom
    WHERE CAST(c.dataEmissao AS DATE) BETWEEN @DATAINI AND @DATAFIN
      AND c.statusNfce = 'A'
      AND c.cupomCancelado = 'N'
    GROUP BY c.codLoja, CAST(c.dataEmissao AS DATE), c.numSerieImpFiscal
)

-- ===========================================
-- Relatório final por filial, dia e série
-- ===========================================
SELECT 
    'Filial ' + CAST(cu.codLoja AS VARCHAR(10)) AS FILIAL,
    cu.data_movto AS DATA_MOVTO,
    cu.numSerieImpFiscal AS NUM_SERIE_FISCAL,
    cu.QTDE_CUPONS,
    ISNULL(cs.TOTAL_CUSTO,0) AS TOTAL_CUSTO,
    cu.TOTAL_VENDA,
    -- Percentual de custo sobre vendas
    CASE WHEN cu.TOTAL_VENDA = 0 THEN 0
         ELSE ((cu.TOTAL_VENDA - ISNULL(cs.TOTAL_CUSTO,0)) / cu.TOTAL_VENDA) * 100
    END AS PERC_CUSTO_VEND,
    -- Média de venda por cupom
    CASE WHEN cu.QTDE_CUPONS = 0 THEN 0
         ELSE cu.TOTAL_VENDA / cu.QTDE_CUPONS
    END AS MEDIA_VENDA
FROM Cupons cu
LEFT JOIN Custo cs
    ON cs.codLoja = cu.codLoja
    AND cs.data_movto = cu.data_movto
    AND cs.numSerieImpFiscal = cu.numSerieImpFiscal
ORDER BY cu.data_movto, cu.codLoja, cu.numSerieImpFiscal;
