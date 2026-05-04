CREATE VIEW vw_meta_mensal as
SELECT
    date(
        ano || '-' || printf('%02d', mes) || '-01'
    ) AS data,
    meta_novas_apolices,
    meta_receita_premios,
    meta_taxa_churn
FROM
    d_meta_mensal;