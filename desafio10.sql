SELECT mu.nome AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas mu
INNER JOIN SpotifyClone.historico_reproducao hi
ON mu.id_musica = hi.musica
INNER JOIN SpotifyClone.usuarios us
ON hi.usuario = us.id_usuario
WHERE us.plano in (1, 4)
GROUP BY mu.nome
ORDER BY mu.nome;