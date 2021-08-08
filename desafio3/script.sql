CREATE DATABASE `desafio3` CHARACTER SET 'utf8';

CREATE TABLE `desafio3`.`usuario`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO usuario (cpf, nome) VALUES ('16798125050', 'Luke Skywalker');
INSERT INTO usuario (cpf, nome) VALUES ('59875804045', 'Bruce Wayne');
INSERT INTO usuario (cpf, nome) VALUES ('04707649025', 'Diane Prince');
INSERT INTO usuario (cpf, nome) VALUES ('21142450040', 'Bruce Banner');
INSERT INTO usuario (cpf, nome) VALUES ('83257946074', 'Harley Quinn');
INSERT INTO usuario (cpf, nome) VALUES ('07583509025', 'Peter Parker');

CREATE TABLE `desafio3`.`info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `ano_nascimento` int NOT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `desafio3`.`info` 
ADD CONSTRAINT `cpf` FOREIGN KEY (`cpf`) REFERENCES `desafio3`.`usuario` (`cpf`);

INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('16798125050', 'M', '1976');
INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('59875804045', 'M', '1960');
INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('04707649025', 'F', '1988');
INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('21142450040', 'M', '1954');
INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('83257946074', 'F', '1970');
INSERT INTO info (cpf, genero, ano_nascimento) VALUES ('07583509025', 'M', '1972');

select CONCAT(usuario.nome, '-', info.genero) as 'usuário',
IF(ano_nascimento<1971, "SIM", "NÃO") as 'maior_50_anos'
from usuario
INNER JOIN info ON usuario.cpf = info.cpf
WHERE info.genero = 'M' AND usuario.id IN(1,4,6)
ORDER BY usuario.nome DESC;