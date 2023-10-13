# DB_Escola

### Todo conteúdo foi criado baseado nos ensinamentos da Proz Educação ###

https://home.prozeducacao.com.br/

Criação de meu primeiro MySQL(Simples mais original)

Esta é minha primeira atividade com MySQL curso Front-End pela Proz.

Criei um Bano de Dados chamado Mydm.

Utilizei o Diagrama para criação e depois conectei(Estou testando ainda).

A ferramenta utilizada foi o Software MySQL Workbench.

A ideia foi criar um banco de dados para os alunos pegarem livros na biblioteca, sendo assim foi criado as tabelas conforme diagrama importado do Workbench.

Nunca havia estudado banco de dados e por utilizar através de linha de comando achei muito interessante e animador o aprendizado.

O que mais gostei é a forma que criamos o banco de dados, pois precisamos utilizar o raciocínio lógico.

O raciocínio lógico é uma forma de nos destacarmos com qualidade e colocarmnos nossas ideias em prática. Bem motivador.

Imagem exportada do diagrama em SVG:
![Segue primeiro diagrama criado e exportado com extensão SVG](Diagrama_biblioteca.svg)
Imagem exportada em PNG:
![Segue primeiro diagrama criado e exportado com extensão SVG](Diagrama_PNG.png)
Exportado PDF pelo MySQL Workbench:
![Faça o download do arquivo PDF](Diagrama_PDF.pdf)

Chave Primária (Primary Key) e Chave Estrangeira (Foreign Key) são conceitos fundamentais em bancos de dados relacionais, desempenhando papéis importantes na organização e na integridade dos dados. Aqui está uma explicação mais detalhada de cada um desses conceitos:

1. Chave Primária (Primary Key):
   - Uma chave primária é um campo (ou um conjunto de campos) em uma tabela de banco de dados que serve para identificar exclusivamente cada registro na tabela.
   - A chave primária garante a unicidade dos valores em sua coluna ou conjunto de colunas associadas, o que significa que não pode haver dois registros com o mesmo valor na chave primária.
   - Além disso, a chave primária também garante a integridade referencial, permitindo que outras tabelas façam referência a ela por meio de chaves estrangeiras.
   - Uma tabela pode ter apenas uma chave primária, e geralmente é escolhida com base em um campo que tem significado único e é relevante para a aplicação.

2. Chave Estrangeira (Foreign Key):
   - Uma chave estrangeira é um campo (ou conjunto de campos) em uma tabela que estabelece uma relação com a chave primária de outra tabela.
   - A chave estrangeira é usada para manter a integridade referencial em um banco de dados, garantindo que os dados relacionados estejam consistentes.
   - Quando uma chave estrangeira é definida em uma tabela, ela normalmente faz referência à chave primária de outra tabela. Isso cria um relacionamento entre as duas tabelas.
   - As chaves estrangeiras são usadas para impor regras de consistência, como a restrição de que um registro em uma tabela filha não pode existir sem um registro correspondente na tabela pai (isso é conhecido como regra de cascata ou regra de exclusão).
   - Um banco de dados pode ter várias chaves estrangeiras, e elas são usadas para criar relacionamentos entre tabelas em um modelo de dados relacional.

Em resumo, a chave primária é usada para identificar exclusivamente os registros em uma tabela, enquanto a chave estrangeira é usada para criar relacionamentos entre tabelas e manter a integridade referencial nos dados. Juntas, essas duas chaves desempenham um papel fundamental na modelagem de dados e na garantia da consistência e integridade dos dados em um banco de dados relacional.

# Iniciando estudos com Join #

### CRIANDO TABELA DISCIPLINAS ###

![Insert_disciplinas](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/d4d55656-2ee8-4895-b663-3607f3330033)

create table disciplinas (

id_disciplina int auto_increment primary key,

nome_disciplina varchar(50) not null,

nome_professor varchar(50) not null

);

### CRIANDO TABELAS ALUNOS COM CHAVE ESTRANGEIRA(FOREINGN KEY) ###

![intert_table_alunos_FK](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/66d28b52-5bea-48ce-8886-5c1b427d3a5d)

create table alunos (
id_alunos int auto_increment primary key,
nome_alunos varchar(50) not null,
disciplinas_id int,
constraint foreign key (disciplinas_id)
	references disciplinas (id_disciplina)
);

### INSERIR DADOS NA TABELA DISCIPLINA ###

INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('Banco de Dados', 'Maria Alvez');
INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('JavaScript', 'Joao da Silva');
INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('HTML', 'Pedro Souza');
INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('CSS', 'Valentina');
INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('Cloud', 'Gilson');

### INSERIR DADOS NA TABELA ALUNOS ###

INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Cleiton', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Carol', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Ruan', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Gabi', NULL);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Rian', NUll);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Mia', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Malu', 2);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Cristiane', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Sonia', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Letícia', 1);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('João', 3);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Cris', 4);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Tom', 5);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Igor', 5);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Evaldo', 4);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Jordan', 4);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Jaca', 3);
INSERT INTO alunos(nome_alunos, disciplinas_id) VALUES ('Beto', 5);


### Inner Join - Esse método retorna os registros que são comuns entre as tabelas. ###

select nome_alunos, nome_disciplina from alunos
inner join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;

O resultado da consulta realizada no código anterior apresenta o nome dos alunos que cursam alguma disciplina. Ou seja, é a interseção entre as tabelas. Os alunos que não cursam nenhuma das disciplinas citadas não são exibidos nessa consulta.

### Left Join - Ao realizar uma consulta com o Left Join, todos os dados da tabela à esquerda serão mostrados. ###

select nome_alunos, nome_disciplina from alunos
left join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id;

Com o código do Left Join, serão apresentados os dados da tabela alunos e os dados da interseção entre as duas tabelas.

### Right Join - Ao realizar uma consulta com o Right Join, todos os dados da tabela à direita serão mostrados. ###

select nome_alunos, nome_disciplina from alunos
right join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id

Com o código do Left Join, serão apresentados os dados da tabela alunos e os dados da interseção entre as duas tabelas.

### Outer Join, Full Outer Join ou full Join - Esse método apresenta todos os registros que estão nas duas tabelas. ###

select nome_alunos, nome_disciplina from alunos
left join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id
union
select nome_alunos, nome_disciplina from alunos
right join disciplinas
on disciplinas.id_disciplina = alunos.disciplinas_id

