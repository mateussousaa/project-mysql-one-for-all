SELECT mu.nome AS cancao,
COUNT(hi.usuario) AS reproducoes
FROM SpotifyClone.musicas mu
INNER JOIN SpotifyClone.historico_reproducao hi
ON mu.id_musica = hi.musica
GROUP BY mu.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;