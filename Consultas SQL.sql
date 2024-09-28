/*Nome de filme e ano*/
SELECT [Filmes].[Nome], [Filmes].[Ano] FROM FILMES;

/*Consulta nome e ano do filme por ordem crescente de ano*/
SELECT [Filmes].[Nome], [Filmes].[Ano] FROM FILMES ORDER BY Ano;

/*Buscar de volta para o futuro*/
SELECT [Filmes].Nome, [Filmes].Ano, [Filmes].Duracao FROM FILMES WHERE Nome LIKE 'De Volta %';

/*Filmes de 1997*/
SELECT [Filmes].Nome, [Filmes].Ano, [Filmes].Duracao FROM FILMES WHERE Ano = 1997;

/*Filmes depois de ano 2000*/
SELECT [Filmes].Nome, [Filmes].Ano, [Filmes].Duracao FROM FILMES WHERE Ano > 2000;

/*Com duração maior que 100 e menor que 150 minutos com duração crescente*/
SELECT [Filmes].Nome, [Filmes].Ano, [Filmes].Duracao FROM FILMES WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

/*Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
SELECT [Filmes].Ano, COUNT(Duracao) AS quantidade FROM Filmes GROUP BY Ano ORDER BY [Filmes].Ano;

/*Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

/*Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

/*Buscar o nome do filme e o gênero*/
SELECT [Filmes].[Nome], [Generos].Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

/*Buscar o nome do filme e o gênero do tipo "Mistério"*/
SELECT [Filmes].[Nome], [Generos].Genero FROM Filmes INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero WHERE [Generos].Genero = 'Mistério';

/*Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
SELECT [Filmes].[Nome], [Atores].PrimeiroNome, [Atores].UltimoNome, ElencoFilme.Papel FROM Filmes INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;