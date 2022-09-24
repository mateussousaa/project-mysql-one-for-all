DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
  id_plano INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  valor DECIMAL(10,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuarios (
  id_usuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  plano INT NOT NULL,
  idade INT NOT NULL,
  data_assinatura DATE NOT NULL,
  FOREIGN KEY(plano) REFERENCES planos(id_plano)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artistas (
  id_artista INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albuns (
  id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  artista INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  ano_lancamento YEAR NOT NULL,
  FOREIGN KEY(artista) REFERENCES artistas(id_artista)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.musicas (
  id_musica INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  album INT NOT NULL,
  duracao_segundos INT NOT NULL,
  FOREIGN KEY(album) REFERENCES albuns(id_album)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artista_usuario (
  usuario INT NOT NULL,
  artista INT NOT NULL,
  PRIMARY KEY (usuario, artista),
  FOREIGN KEY(artista) REFERENCES artistas(id_artista),
  FOREIGN KEY(usuario) REFERENCES usuarios(id_usuario)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.historico_reproducao (
  usuario INT NOT NULL,
  musica INT NOT NULL,
  data_reprodução DATETIME NOT NULL,
  PRIMARY KEY (usuario , musica),
  FOREIGN KEY(usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY(musica) REFERENCES musicas(id_musica)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.planos (nome, valor)
VALUES ('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);

INSERT INTO SpotifyClone.usuarios (nome, plano , idade , data_assinatura)
VALUES ('Barbara Liskov', 1, 82, '2019-10-20'),
('Robert Cecil Martin', 1, 58, '2017-01-06'),
('Ada Lovelace', 2, 37, '2017-12-30'),
('Martin Fowler', 2, 46, '2017-01-17'),
('Sandi Metz', 2, 58, '2018-04-29'),
('Paulo Freire', 3, 19, '2018-02-14'),
('Bell Hooks', 3, 26, '2018-01-05'),
('Christopher Alexander', 4, 85, '2019-06-05'),
('Judith Butler', 4, 45, '2020-05-13'),
('Jorge Amado', 4, 58, '2017-02-17');

INSERT INTO SpotifyClone.artistas (nome)
VALUES ('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

INSERT INTO SpotifyClone.albuns (artista, nome, ano_lancamento)
VALUES (1, 'Renaissance', '2022'),
(2, 'Jazz', '1978'),
(2, 'Hot Space', '1982'),
(3, 'Falso Brilhante', '1998'),
(3, 'Vento de Maio', '2001'),
(4, 'QVVJFA?', '2003'),
(5, 'Somewhere Far Beyond', '2007'),
(6, 'I Put A Spell On You', '2012');

INSERT INTO SpotifyClone.musicas (nome, album, duracao_segundos)
VALUES ('BREAK MY SOUL', 1, 279),
('VIRGO’S GROOVE', 1, 369),
('ALIEN SUPERSTAR', 1, 116),
('Don’t Stop Me Now', 2, 203),
('Under Pressure', 3, 152),
('Como Nossos Pais', 4, 105),
('O Medo de Amar é o Medo de Ser Livre', 5, 207),
('Samba em Paris', 6, 267),
('The Bard’s Song', 7, 244),
('Feeling Good', 8, 100);

INSERT INTO SpotifyClone.artista_usuario (usuario, artista)
VALUES (1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(9, 3),
(10, 2);

INSERT INTO SpotifyClone.historico_reproducao(usuario, musica , data_reprodução )
VALUES (1, 8, '2022-02-28 10:45:55'),
(1, 2,  '2020-05-02 05:30:35'),
(1, 10,  '2020-03-06 11:22:33'),
(2, 10, '2022-08-05 08:05:17'),
(2, 7,  '2020-01-02 07:40:33'),
(3, 10, '2020-11-13 16:55:13'),
(3, 2,  '2020-12-05 18:38:30'),
(4, 8, '2021-08-15 17:10:10'),
(5, 8, '2022-01-09 01:44:33'),
(5, 5, '2020-08-06 15:23:43'),
(6, 7, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 4, '2011-12-15 22:30:49'),
(8, 4, '2012-03-17 14:56:41'),
(9, 9, '2022-02-24 21:14:22'),
(10, 3, '2015-12-13 08:30:22');