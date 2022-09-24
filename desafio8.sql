SELECT ar.nome AS artista,
al.nome AS album
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON ar.id_artista = al.artista
HAVING ar.nome = 'Elis Regina'
ORDER BY ar.nome, al.nome;