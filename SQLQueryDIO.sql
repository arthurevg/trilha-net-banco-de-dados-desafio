-- DESAFIO 1 - Buscar o nome e ano dos filmes

SELECT 
	Nome, Ano
FROM Filmes

--DESAFIO 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

--DESAFIO 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--DESAFIO 4 - Buscar os filmes lan�ados em 1997

SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'

--DESAFIO 5 - Buscar os filmes lan�ados AP�S o ano 2000

SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > '2000'

--DESAFIO 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao

--DESAFIO 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, COUNT(*) Quantidade FROM Filmes
WHERE Ano <> '' --<> enquanto for diferente de ''(nulo) <> tbm pode ser escrito como !=
GROUP BY Ano
ORDER BY Quantidade DESC

--DESAFIO 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT * FROM Atores
WHERE Genero = 'M'

--DESAFIO 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--DESAFIO 10  - Buscar o nome do filme e o g�nero

SELECT Nome, Genero FROM Filmes

INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--DESAFIO 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT Nome, Genero FROM Filmes

INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mist�rio'

--DESAFIO 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes

INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor