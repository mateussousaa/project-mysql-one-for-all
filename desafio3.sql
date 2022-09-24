SELECT us.nome AS usuario,
COUNT(hi.musica) AS qt_de_musicas_ouvidas,
ROUND(SUM(mu.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios us
INNER JOIN SpotifyClone.historico_reproducao hi
ON us.id_usuario = hi.usuario
INNER JOIN SpotifyClone.musicas mu
ON hi.musica = mu.id_musica
GROUP BY usuario
ORDER BY usuario ASC;