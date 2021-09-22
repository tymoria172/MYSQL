create database db_categoriaDaMinhaVida;

use db_categoriaDaMinhaVida;

create table tb_categoria (
			id bigint auto_increment ,
            categoria varchar(20) not null,
			semestres	varchar(20) not null,
            modalidade varchar(20)not null,
           primary key(id)
);

insert into tb_categoria (categoria, semestres, modalidade) values ("tecnico","4","EAD");
insert into tb_categoria (categoria, semestres, modalidade) values ("tecnico","2","EAD");
insert into tb_categoria (categoria, semestres, modalidade) values ("tecnico","4","presencial");
insert into tb_categoria (categoria, semestres, modalidade) values ("administrativo","4","presencial");
insert into tb_categoria (categoria, semestres, modalidade) values ("administrativo","2","EAD");
insert into tb_categoria (categoria, semestres, modalidade) values ("Sistemas","8","presencial");
insert into tb_categoria (categoria, semestres, modalidade) values ("Sistemas","8","EAD");

	create table tb_curso (
    
		id bigint auto_increment,
        nome varchar(50) not null,
        valor int not null,
        instituição varchar(50) not null,
        professor varchar(55) not null,
		categoria_id bigint,
        
        primary key(id),
        FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
        );
        
        insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("RH", 500,"ETEC","Flavio",4);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Exceel", 200,"Senai","Maria",5);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Eletronica", 1500,"Senai","Allan",3);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Eletrica", 60,"Etec","silva",2);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Analise de sistemas", 2400,"Cruzeiro do sul","Allison",7);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Analise de sistemas", 1100,"Cruzeiro do sul","Clarisse",6);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("Java", 800,"Generation","Yuri",6);
		insert into tb_curso (nome, valor, instituição, professor, categoria_id) values ("MySQL", 600,"Allura","Fabiana",7);







select * from tb_curso;
						
select * from tb_curso where valor > 500;

select * from tb_curso where valor between 100 and 600;

select * from tb_curso where nome like "%c%";

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria_id ;

select * from tb_curso inner join tb_categoria 
on tb_categoria.id = tb_curso.categoria_id where modalidade like "EAD";