-- Active: 1714994625333@@127.0.0.1@5432@credito


-- Visualizando a tabela "CREDITO"
SELECT * FROM "CREDITO";

-- Renomeando a tabela "CREDITO"
ALTER TABLE "CREDITO" RENAME TO credito;

-- Visualizando a tabela CREDITO
SELECT * FROM credito;

-- Renomeando a tabela "HISTORICO_CREDITO"
ALTER TABLE "HISTORICO_CREDITO" RENAME TO historico_credito;

-- Visualizando a tabela HISTORICO_CREDITO
SELECT * FROM historico_credito;

--Alterando os nomes das colunas de credito
ALTER TABLE credito RENAME COLUMN "IDCREDITO" TO idcredito;
ALTER TABLE credito RENAME COLUMN "Duracao" TO duracao;
ALTER TABLE credito RENAME COLUMN "HistoricoCredito" TO historico_credito;
ALTER TABLE credito RENAME COLUMN "Proposito" TO proposito;
ALTER TABLE credito RENAME COLUMN "Valor" TO valor;
ALTER TABLE credito RENAME COLUMN "Investimentos" TO investimentos;
ALTER TABLE credito RENAME COLUMN "Emprego" TO emprego;
ALTER TABLE credito RENAME COLUMN "TempoParcelamento" TO tempo_parcelamento;
ALTER TABLE credito RENAME COLUMN "EstadoCivil" TO estado_civil;
ALTER TABLE credito RENAME COLUMN "FiadorTerceiros" TO fiador_terceiros;
ALTER TABLE credito RENAME COLUMN "ResidenciaDesde" TO residencia_desde;
ALTER TABLE credito RENAME COLUMN "Idade" TO idade;
ALTER TABLE credito RENAME COLUMN "OutrosFinanciamentos" TO outros_financiamentos;
ALTER TABLE credito RENAME COLUMN "Habitacao" TO habitacao;
ALTER TABLE credito RENAME COLUMN "EmprestimoExistente" TO emprestimo_existente;
ALTER TABLE credito RENAME COLUMN "Profissao" TO profissao;
ALTER TABLE credito RENAME COLUMN "Dependentes" TO dependentes;
ALTER TABLE credito RENAME COLUMN "SocioEmpresa" TO socio_empresa;
ALTER TABLE credito RENAME COLUMN "Estrangeiro" TO estrangeiro;
ALTER TABLE credito RENAME COLUMN "Status" TO status_objetivo;

--Alterando os nomes das colunas de historico credito
ALTER TABLE historico_credito RENAME COLUMN "IDHISTCRED" TO idhist_credit;
ALTER TABLE historico_credito RENAME COLUMN "HISTORICO" TO historico;






SELECT
    *,
    htc.historico
FROM 
    credito AS cdt
LEFT OUTER JOIN
    historico_credito AS htc ON cdt.historico_credito = htc.idhist_credit;