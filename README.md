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

![intert_table_alunosproz](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/63d8c0c5-29da-40b7-9412-07c4c1e0df9c)

create table disciplinas (

id_disciplina int auto_increment primary key,

nome_disciplina varchar(50) not null,

nome_professor varchar(50) not null

);

![select_disciplina](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/bafd2418-190a-4cc3-9ec2-a93d1ac4d1f5)

### CRIANDO TABELAS ALUNOS COM CHAVE ESTRANGEIRA(FOREINGN KEY) ###

![intert_table_alunos_FK](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/66d28b52-5bea-48ce-8886-5c1b427d3a5d)

create table alunos (

id_alunos int auto_increment primary key,

nome_alunos varchar(50) not null,

constraint foreign key (disciplinas_id)

	references disciplinas (id_disciplina)
);

![select_alunos](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/076d0d73-4653-4aa5-a169-cf72c019fcfe)

### INSERIR DADOS NA TABELA DISCIPLINA ###

![Insert_disciplinas](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/21f90cf5-49cb-477b-8878-ac57917e961e)


INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('Banco de Dados', 'Maria Alvez');

INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('JavaScript', 'Joao da Silva');

INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('HTML', 'Pedro Souza');

INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('CSS', 'Valentina');

INSERT INTO disciplina(nome_disciplina, nome_professor) VALUES ('Cloud', 'Gilson');

### INSERIR DADOS NA TABELA ALUNOS ###

![Insert_alunos](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/f7ee5c01-9441-446f-a754-cc4ac89634fc)


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

![Imagem_InnerJoin](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/a5696d0b-188d-4b92-8ae9-6ae8288719d6)

![inner_join](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/e19df397-7f2c-4d4d-befa-d1ac9311510c)


select nome_alunos, nome_disciplina from alunos

inner join disciplinas

on disciplinas.id_disciplina = alunos.disciplinas_id;

O resultado da consulta realizada no código anterior apresenta o nome dos alunos que cursam alguma disciplina. Ou seja, é a interseção entre as tabelas. Os alunos que não cursam nenhuma das disciplinas citadas não são exibidos nessa consulta.

### Left Join - Ao realizar uma consulta com o Left Join, todos os dados da tabela à esquerda serão mostrados. ###

![Imagem_LeftJoin](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/7a06f41f-febe-44d3-b091-25db36afb586)

![left_join](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/c50d31e4-b440-4757-90d8-0341ab6a9bc6)

select nome_alunos, nome_disciplina from alunos

left join disciplinas

on disciplinas.id_disciplina = alunos.disciplinas_id;

Com o código do Left Join, serão apresentados os dados da tabela alunos e os dados da interseção entre as duas tabelas.

### Right Join - Ao realizar uma consulta com o Right Join, todos os dados da tabela à direita serão mostrados. ###

![Imagem_RightJoin](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/823fcf04-028f-47a1-8e43-4b6d9b7aa0b2)

![right_join](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/dc2362ca-bc18-4200-88a7-c050699ebc43)


select nome_alunos, nome_disciplina from alunos

right join disciplinas

on disciplinas.id_disciplina = alunos.disciplinas_id

Com o código do Left Join, serão apresentados os dados da tabela alunos e os dados da interseção entre as duas tabelas.

### Outer Join, Full Outer Join ou full Join - Esse método apresenta todos os registros que estão nas duas tabelas. ###

![Imagem_FullOuterJoin](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/bd6e2e90-4929-4f81-8472-6d469aadb1b2)

![Full_join](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/e8f3e67a-bc1d-4c73-8627-0104ec708918)

select nome_alunos, nome_disciplina from alunos

left join disciplinas

on disciplinas.id_disciplina = alunos.disciplinas_id

union

select nome_alunos, nome_disciplina from alunos

right join disciplinas

on disciplinas.id_disciplina = alunos.disciplinas_id

# Iniciando estudos sobre Triggers #
![tela_triggers](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/6d21193e-5a48-4276-bcdc-474175f90d10)

Ao iniciar essa parte dos estudos sobre **Triggers** estarei utilizando o MySQL Client.

Eu particularmente sou apaixonado por linhas de comandos e achei bem prático essa opção, então bora lá.

![Utilizando_CLC](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/4691c00f-d53b-40c9-9e68-85d3bdb23ffd)


Primeiro acessei meu banco de dados utilizando o comando **"USE"** mais o nome do banco de dados;

Feito o login com mesmo usuário que estamos no logado no Workbench é só seguir com os comandos agora.

Iniciando testes com essa nova ferramenta.
![cli_listar_alunosproz](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/f7ed3038-2080-468a-a31b-6a15b64b3376)

Comandos básicos utilizados nesss primeiro momento:

USE ALUNOSPROZ; (Acessando banco de dados "ALUNOSPROZ")

SHOW TABLES; (Listando tabelas existentes em "ALUNOSPROZ")

SELECT * FROM DISCIPLINAS; (Listando todo conteúdo da tabela "DISCIPLINAS")

SELECT * FROM ALUNOS; (Listando todo conteúdo da tabela "ALUNOS")

Agora vamos inserir alunos na tabela ALUNOS

![cli_Insert_aluno](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/94f6d7fd-4a97-4cfa-bced-908f238bff17)

Exemplo:

**INSERT INTO alunos (nome_alunos, disciplinas_id) VALUES ('Danielle', 1);**

Lembrando que o campo ID é AUTO_INCREMENT (Não é preenchido, pois processo é feito automaticamente)

Consultando a tabela para validar a inclusão de dados

![cli_select_aluno](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/baa0c0e0-1b05-4ae8-adc9-2824a8ea31b7)


# A PRÁTICA ESTÁ NOS LEVANDO A PERFEIÇÃO, SEMPRE LEMBRANDO QUE MENOS É MAIS #

Vou usar um exemplo mais simples pra melhor compreender sobre JOIN:

![Conjuntos](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/66d49da5-8231-4385-a474-c89c135962c5)

Temos um período escolar com MANHÃ, TARDE E INTEGRAL.

Existem alunos que estudam somente na parte da manhã, a tarde ou nos dois períodos.

Vou refazer os comandos JOIN´s para entendermos:

