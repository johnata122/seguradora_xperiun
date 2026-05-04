CREATE VIEW vw_clientes AS
SELECT 
	A.cliente_id,
	A.faixa_etaria,
	A.genero,
	A.tipo_cliente,
	A.tempo_cliente_meses,
	A.uf,
	B.estado,
	B.regiao
FROM
	d_cliente A
LEFT JOIN d_regiao B ON A.regiao_id = B.regiao_id;