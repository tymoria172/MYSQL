CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_aluno(
    id bigint auto_increment,
    nome varchar (255) not null,
    idade int not null,
	sala varchar(255)  not null,
    endereço varchar(255) not null,
    nota int not null,
    primary key (id)
    );
    
    INSERT INTO tb_aluno( nome, idade, sala, endereço, nota) VALUES ("Andressa", 14, "1B", "Rua das oliveiras", 8); 
    
    INSERT INTO tb_aluno( nome, idade, sala, endereço, nota) VALUES ("Anderson", 15, "2C", "Rua do orvalho", 5);
    INSERT INTO tb_aluno( nome, idade, sala, endereço, nota) VALUES ("Vitor", 10, "1A", "Av Conceiçao", 7);
    INSERT INTO tb_aluno( nome, idade, sala, endereço, nota) VALUES ("Lais", 17, "3D", "Ladeira Amelia", 10);
    
     SELECT * FROM tb_aluno;     
     
     -- alunos com nota maior que 7
     
     SELECT * FROM tb_aluno WHERE id =   1;     
     SELECT * FROM tb_aluno WHERE id =   4;  
     
     UPDATE tb_aluno SET nota = 6 WHERE id = 3;
     
	-- alunos com nota menor que 7
    
      SELECT * FROM tb_aluno WHERE id =   2;     
        SELECT * FROM tb_aluno WHERE id =   3;     