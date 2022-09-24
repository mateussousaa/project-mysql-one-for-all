SELECT MIN(pl.valor) AS faturamento_minimo,
MAX(pl.valor) AS faturamento_maximo,
ROUND(AVG(pl.valor), 2) AS faturamento_medio,
SUM(pl.valor) AS faturamento_total
FROM SpotifyClone.usuarios us
INNER JOIN SpotifyClone.planos pl
ON us.plano = pl.id_plano;