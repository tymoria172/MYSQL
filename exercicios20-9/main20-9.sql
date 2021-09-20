-- criando base de dados
create database db_empresa;
-- usando a base de dados que criei
use db_empresa; 
-- criando tabela 
CREATE TABLE tb_funcionarios(
		id bigint auto_increment,
        nome varchar (255) not null,
        idade int not null,
        salario decimal (255) not null,
        setor int not null,
        horasTrabalhadas int not null,
        primary key (id)
);
-- Inserindo dados na tabela funcionarios
INSERT INTO tb_funcionarios (nome, idade, salario, setor, horasTrabalhadas) VALUES ("André Ricardo", 21, 1300.00, 3, 36);

INSERT INTO tb_funcionarios (nome, idade, salario, setor, horasTrabalhadas) VALUES ("Laura ferraz", 19, 2500.00, 1, 26);

INSERT INTO tb_funcionarios (nome, idade, salario, setor, horasTrabalhadas) VALUES ("Jaime silva", 16, 800.00, 2, 24);

INSERT INTO tb_funcionarios (nome, idade, salario, setor, horasTrabalhadas) VALUES ("Yuri Martins", 25, 4300.00, 1, 36);

INSERT INTO tb_funcionarios (nome, idade, salario, setor, horasTrabalhadas) VALUES ("Luis Guerreiro", 47, 9300.00, 4, 26);

-- funcionariso com mais de 2000

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE id = 2; 

SELECT * FROM tb_funcionarios WHERE id = 4; 

SELECT * FROM tb_funcionarios WHERE id = 5; 

-- funcionarios com menos de 2000
SELECT * FROM tb_funcionarios WHERE id = 1; 
SELECT * FROM tb_funcionarios WHERE id = 3; 


