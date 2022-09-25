SELECT nome nome_musica,
CASE
	WHEN nome LIKE '%Bard%' THEN REPLACE('The Bard’s Song', 'Bard', 'QA')
    WHEN nome LIKE '%Amar%' THEN REPLACE('O Medo de Amar é o Medo de Ser Livre', 'Amar', 'Code Review')
    WHEN nome LIKE '%Pais%' THEN REPLACE('Como Nossos Pais', 'Pais', 'Pull Requests')
    WHEN nome LIKE '%SOUL%' THEN REPLACE('BREAK MY SOUL', 'SOUL', 'CODE')
    WHEN nome LIKE '%SUPERSTAR%' THEN REPLACE('ALIEN SUPERSTAR', 'SUPERSTAR', 'SUPERDEV')
    END novo_nome
FROM SpotifyClone.musicas
WHERE nome LIKE '%Bard%'
OR nome LIKE '%Amar%'
OR nome LIKE '%Pais%'
OR nome LIKE '%SOUL%'
OR nome LIKE '%SUPERSTAR%'
ORDER BY nome DESC;