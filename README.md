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

# Minha ideia era refazer esse  README, pois a medida que vou praticando a melhora surge mas vou deixar para acompanhar minha evolução #

Hoje utilizei somente o MySQL Client, e fiquei muito feliz.

Aos poucos estou certo que a é esse o caminho, agora vou te mostrar sobre a criação do **PROCEDURE**

Definição de PROCEDURE: 

Uma "procedure" (procedimento armazenado) é um objeto de programação em um banco de dados que contém um conjunto de instruções SQL ou lógica de negócios que podem ser executadas repetidamente. As procedures são usadas para encapsular tarefas ou operações específicas que podem ser executadas no banco de dados. Aqui estão os principais aspectos da definição de uma procedure:

**Encapsulação de Lógica:** As procedures permitem que você agrupe um conjunto de comandos SQL em uma única unidade lógica. Isso pode incluir consultas, inserções, atualizações, exclusões e outros comandos SQL, juntamente com lógica de controle.

**Reutilização de Código:** As procedures facilitam a reutilização de código, uma vez que podem ser chamadas a partir de várias partes do código ou de outros programas. Isso ajuda a evitar a duplicação de código e a manter a consistência na lógica de negócios.

**Parâmetros:** As procedures podem aceitar parâmetros como entrada, permitindo que você personalize a ação da procedure em cada chamada. Isso torna as procedures flexíveis e adaptáveis a diferentes cenários.

**Transações:** As procedures podem ser usadas para criar transações, permitindo que um conjunto de operações seja tratado como uma única unidade atômica. Se uma operação falhar, as alterações podem ser revertidas.

**Segurança:** Você pode definir permissões específicas para a execução de procedures, controlando quem pode executar determinadas operações no banco de dados.

**Otimização de Desempenho:** As procedures podem ser pré-compiladas e otimizadas pelo sistema de gerenciamento de banco de dados, o que pode melhorar o desempenho e a eficiência.

**Manutenção Controlada:** Ao armazenar a lógica de negócios no banco de dados como procedures, você pode controlar e monitorar facilmente as alterações na lógica subjacente.

CREATE TABLE Compras (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    DataCompra DATE,
    ProdutoID INT,
    Quantidade INT
);

### Atualizando tabela compras(Incluindo coluna Nome) ###

ALTER TABLE compras
ADD Nome VARCHAR(255);

### Incluído Produtos na tabela compras ###

UPDATE compras

SET Nome = 'Arroz'

WHERE ProdutoID = 1;

UPDATE compras

SET Nome = 'Feijão'

WHERE ProdutoID = 2;

UPDATE compras

SET Nome = 'Macarrão'

WHERE ProdutoID = 3;

UPDATE compras

SET Nome = 'Fubá'

WHERE ProdutoID = 4;

UPDATE compras

SET Nome = 'Leite'

WHERE ProdutoID = 5;

UPDATE compras

SET Nome = 'Maizena'

WHERE ProdutoID = 6;

UPDATE compras

SET Nome = 'Chocolate'

WHERE ProdutoID = 7;

UPDATE compras

SET Nome = 'Ovo'

WHERE ProdutoID = 8;

UPDATE compras

SET Nome = 'Carne de Boi'

WHERE ProdutoID = 9;

UPDATE compras

SET Nome = 'Carne de Porco'

WHERE ProdutoID = 10;

UPDATE compras

SET Nome = 'Peixe'

WHERE ProdutoID = 11;

UPDATE compras

SET Nome = 'Suco'

WHERE ProdutoID = 12;

### Criação PROCEDURE ###

DELIMITER //

CREATE PROCEDURE RelatorioCompras()

BEGIN

    SELECT DataCompra, ProdutoID, Quantidade

    FROM Compras;
    
END //

DELIMITER ;


### Chamando PROCEDURE ###

CALL RelatorioCompras();

### MySQL Client ###

Foi realizado todo procedimento pelo MySQL Client, e ai final consultado pelo MySQL Workbench (Muito interessante utilização do Client)

Segue passo a passo realizado:

![01_Create_Database](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/224d658c-3544-4e1b-bdb1-809b5ce1d8cc)

![02_Show_Database](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/8ef0ba31-253a-4b97-9ae7-cd762eb7adf5)

![03_USE_mercado](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/ce1e01d1-7709-4bed-882a-998bbb1a5e9d)

![04_create_table_compras](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/5e7eacfe-e7d2-4fa6-bc14-11d5afba42c2)

![05_Insert_Into_Compras](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/d7a23683-7e29-4404-9d42-109b4c3bc384)

![06_Select_From_Compras](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/2e9cbf15-d8ef-4222-b945-110205f2149b)

![07_PROCEDURE](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/a74f894b-dc0c-47af-bcca-23dac35c0141)

![08_CALL_PROCEDURE](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/09c2ac69-dbad-4347-9f84-94215a688c30)

![10_Update_Baixa_Item](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/893d13a5-1197-48da-99bb-10fc83f9de23)

![11_Consulta_baixa](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/ae152086-df27-42b0-b8f1-6ee3b5b44d0e)

![09_MySQL_Workbench](https://github.com/GilsonRavaiani/DB_Escola/assets/101072367/df312f1a-6d6c-4d43-be2b-6259f5e3e173)


Ao invés de fazer o update de item por intem, adcionei todos os itens ao criar a tabela:

CREATE TABLE Compras (

    ID INT PRIMARY KEY AUTO_INCREMENT,

    Nome VARCHAR(50),

    DataCompra DATE,

    ProdutoID INT,

    Quantidade INT

);

No caso anterior havia esquecido de inserir o nome dos produtos, refiz o procedimento já incluindo todos os dados:

INSERT INTO Compras (Nome, DataCompra, ProdutoID, Quantidade) VALUES
    ('Arroz', '2023-10-17', 1, 10),

    ('Feijão', '2023-10-16', 2, 5),

    ('Macarrão', '2023-10-15', 3, 8),

    ('Fubá', '2023-10-17', 4, 10),

    ('Leite', '2023-10-16', 5, 5),

    ('Maizena', '2023-10-15', 6, 8),

    ('Chocolate', '2023-10-17', 7, 10),

    ('Ovos', '2023-10-16', 8, 5),

    ('Carne de Boi', '2023-10-15', 9, 8),

    ('Carne de Porco', '2023-10-17', 10, 10),

    ('Peixe', '2023-10-16', 11, 5),

    ('Suco', '2023-10-15', 12, 8);

    A forma mais ágil e correta, trazendo melhores resultados. (As vezes nesse caso não precisaria de ID e ProdutoID, mas estou aprendendo com os erros).