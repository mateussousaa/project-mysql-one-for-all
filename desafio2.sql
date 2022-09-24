SELECT COUNT(*) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.musicas;