SELECT ar.nome AS artista,
al.nome AS album,
COUNT(ar_us.artista) AS seguidores
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.id_artista = al.artista
INNER JOIN SpotifyClone.artista_usuario ar_us
ON ar.id_artista = ar_us.artista
GROUP BY al.nome, ar.nome
ORDER BY seguidores DESC, ar.nome, al.nome;