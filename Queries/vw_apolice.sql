CREATE VIEW vw_apolice as
SELECT
	apolice_id,
	cliente_id,
	canal_id,
	data_inicio as data_inicio,
	data_fim_prevista as data_fim_prevista,
	vigencia_meses,
	premio_mensal,
	parcelas_pagas,
	receita_total,
	receita_esperada,
	comissao,
	forma_pagamento,
	status,
	data_cancelamento as data_cancelamento,
	motivo_cancelamento
FROM
	f_apolice