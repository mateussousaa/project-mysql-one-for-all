SELECT COUNT(hi.musica) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducao hi
INNER JOIN SpotifyClone.usuarios us
ON hi.usuario = us.id_usuario
WHERE us.nome = 'Barbara Liskov';