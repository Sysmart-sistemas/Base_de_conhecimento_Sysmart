--------------------------------
--NOVO GERADOR DE PERIODO DE APURAÇÃO GENERICO
-- SÃO 3 PARAMETROS PARA PREENCHER OU ALTERAR
-- CODIGO DA FILIAL EX. '100'
-- ANO QUE QUERIA CRIAR OS LOTES EX. '2015'
-- O ULTIMO DIA NO MES DE FEVEREIRO, NESSE CASO SOMENTE OS VALORES 28 E 29
--------------------------------
declare @codFilial as varchar(3)
declare @ano as varchar(4)
declare @fev as varchar(2)
declare @01I as datetime ;declare @01F as datetime ;declare @codimposto01 as numeric ;declare @mesrefano01 as numeric
declare @02I as datetime ;declare @02F as datetime ;declare @codimposto02 as numeric ;declare @mesrefano02 as numeric
declare @03I as datetime ;declare @03F as datetime ;declare @codimposto03 as numeric ;declare @mesrefano03 as numeric
declare @04I as datetime ;declare @04F as datetime ;declare @codimposto04 as numeric ;declare @mesrefano04 as numeric
declare @05I as datetime ;declare @05F as datetime ;declare @codimposto05 as numeric ;declare @mesrefano05 as numeric
declare @06I as datetime ;declare @06F as datetime ;declare @codimposto06 as numeric ;declare @mesrefano06 as numeric
declare @07I as datetime ;declare @07F as datetime ;declare @codimposto07 as numeric ;declare @mesrefano07 as numeric
declare @08I as datetime ;declare @08F as datetime ;declare @codimposto08 as numeric ;declare @mesrefano08 as numeric
declare @09I as datetime ;declare @09F as datetime ;declare @codimposto09 as numeric ;declare @mesrefano09 as numeric
declare @10I as datetime ;declare @10F as datetime ;declare @codimposto10 as numeric ;declare @mesrefano10 as numeric
declare @11I as datetime ;declare @11F as datetime ;declare @codimposto11 as numeric ;declare @mesrefano11 as numeric
declare @12I as datetime ;declare @12F as datetime ;declare @codimposto12 as numeric ;declare @mesrefano12 as numeric
set @codFilial = '100'
set @ano = '2026'
set @fev = '28'

-- DATE AAAAMMDD
set @01I= @ano+'0101' ; set @01F= @ano+'0131'; set @codimposto01=CAST(1 as varchar)+@ano; set @mesrefano01= CAST(1 as varchar)+@ano
set @02I= @ano+'0201' ; set @02F= @ano+'02'+@fev; set @codimposto02=CAST(2 as varchar)+@ano; set @mesrefano02=CAST(2 as varchar)+@ano
set @03I= @ano+'0301' ; set @03F= @ano+'0331'; set @codimposto03=CAST(3 as varchar)+@ano; set @mesrefano03=CAST(3 as varchar)+@ano
set @04I= @ano+'0401' ; set @04F= @ano+'0430'; set @codimposto04=CAST(4 as varchar)+@ano; set @mesrefano04=CAST(4 as varchar)+@ano
set @05I= @ano+'0501' ; set @05F= @ano+'0531'; set @codimposto05=CAST(5 as varchar)+@ano; set @mesrefano05=CAST(5 as varchar)+@ano
set @06I= @ano+'0601' ; set @06F= @ano+'0630'; set @codimposto06=CAST(6 as varchar)+@ano; set @mesrefano06=CAST(6 as varchar)+@ano
set @07I= @ano+'0701' ; set @07F= @ano+'0731'; set @codimposto07=CAST(7 as varchar)+@ano; set @mesrefano07=CAST(7 as varchar)+@ano
set @08I= @ano+'0801' ; set @08F= @ano+'0831'; set @codimposto08=CAST(8 as varchar)+@ano; set @mesrefano08=CAST(8 as varchar)+@ano
set @09I= @ano+'0901' ; set @09F= @ano+'0930'; set @codimposto09=CAST(9 as varchar)+@ano; set @mesrefano09=CAST(9 as varchar)+@ano
set @10I= @ano+'1001' ; set @10F= @ano+'1031'; set @codimposto10=CAST(10 as varchar)+@ano; set @mesrefano10=CAST(10 as varchar)+@ano
set @11I= @ano+'1101' ; set @11F= @ano+'1130'; set @codimposto11=CAST(11 as varchar)+@ano; set @mesrefano11=CAST(11 as varchar)+@ano
set @12I= @ano+'1201' ; set @12F= @ano+'1231'; set @codimposto12=CAST(12 as varchar)+@ano; set @mesrefano12=CAST(12 as varchar)+@ano


-- periodo 01
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'PIS',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'IPI',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'COFINS',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'ICMS',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'ICMSST',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'IBS',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto01,'CBS',@01I,@01F,NULL,NULL,0.00,0.00,'A',@mesrefano01,NULL)


-- periodo 02
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'PIS',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'IPI',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'COFINS',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'ICMS',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'ICMSST',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'IBS',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto02,'CBS',@02I,@02F,NULL,NULL,0.00,0.00,'A',@mesrefano02,NULL)


-- periodo 03
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'PIS',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'IPI',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'COFINS',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'ICMS',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'ICMSST',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'iBS',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto03,'CBS',@03I,@03F,NULL,NULL,0.00,0.00,'A',@mesrefano03,NULL)


-- periodo 04
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'PIS',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'IPI',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'COFINS',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'ICMS',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'ICMSST',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'IBS',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto04,'CBS',@04I,@04F,NULL,NULL,0.00,0.00,'A',@mesrefano04,NULL)

-- periodo 05
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'PIS',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'IPI',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'COFINS',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'ICMS',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'ICMSST',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'IBS',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto05,'CBS',@05I,@05F,NULL,NULL,0.00,0.00,'A',@mesrefano05,NULL)

-- periodo 06
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'PIS',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'IPI',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'COFINS',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'ICMS',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'ICMSST',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'IBS',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto06,'CBS',@06I,@06F,NULL,NULL,0.00,0.00,'A',@mesrefano06,NULL)

-- periodo 07
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'PIS',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'IPI',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'COFINS',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'ICMS',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'ICMSST',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'IBS',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto07,'CBS',@07I,@07F,NULL,NULL,0.00,0.00,'A',@mesrefano07,NULL)

-- periodo 08
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'PIS',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'IPI',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'COFINS',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'ICMS',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'ICMSST',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'IBS',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto08,'CBS',@08I,@08F,NULL,NULL,0.00,0.00,'A',@mesrefano08,NULL)



-- periodo 09
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'PIS',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'IPI',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'COFINS',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'ICMS',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'ICMSST',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'IBS',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto09,'CBS',@09I,@09F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)

-- periodo 10
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'PIS',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano10,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'IPI',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano10,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'COFINS',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano10,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'ICMS',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano10,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'ICMSST',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'IBS',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto10,'CBS',@10I,@10F,NULL,NULL,0.00,0.00,'A',@mesrefano09,NULL)

-- periodo 11
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'PIS',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'IPI',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'COFINS',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'ICMS',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'ICMSST',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'IBS',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto11,'CBS',@11I,@11F,NULL,NULL,0.00,0.00,'A',@mesrefano11,NULL)

-- periodo 12
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'PIS',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'IPI',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'COFINS',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'ICMS',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'ICMSST',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'IBS',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)
insert into tbperiodoapuracao 
(cod_filial,cod_periodo,cod_imposto,data_ini_periodo,data_fim_periodo,data_entrega,data_vencto,saldo_anterior,saldo_atual,status,mesrefano,saldo_transp) 
values (@codFilial, @codimposto12,'CBS',@12I,@12F,NULL,NULL,0.00,0.00,'A',@mesrefano12,NULL)

 