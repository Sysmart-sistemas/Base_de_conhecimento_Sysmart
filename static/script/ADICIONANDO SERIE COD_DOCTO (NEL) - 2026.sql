DECLARE @i INT
SET @i = 1

WHILE @i <= 999
BEGIN

    IF NOT EXISTS
    (
        SELECT 1
        FROM tbSequencia
        WHERE Cod_filial = '100'
        AND Cod_docto = 'NEL'
        AND Serie_seq = CAST(@i AS CHAR(3))
    )
    BEGIN

        INSERT INTO tbSequencia
        (
            Cod_filial,
            Cod_docto,
            Serie_seq,
            Cod_docFiscal,
            Num_sequencia,
            Status_sequencia,
            Desc_sequencia,
            Seq_numero_min,
            Seq_numero_max,
            ID_Rotina
        )
        VALUES
        (
            '100',
            'NEL',
            CAST(@i AS CHAR(3)),
            '55',
            0,
            'N',
            'Sequencia NEL',
            0,
            999999,
            1
        )

    END

    SET @i = @i + 1

END
