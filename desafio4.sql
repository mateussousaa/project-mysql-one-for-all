SELECT us.nome AS usuario,
IF(MAX(YEAR(hi.data_reprodução)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_reproducao hi
INNER JOIN SpotifyClone.usuarios us
ON hi.usuario = us.id_usuario
GROUP BY us.nome
ORDER BY us.nome ASC;