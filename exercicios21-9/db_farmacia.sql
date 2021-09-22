create database db_farmacia;

use db_farmacia;

create table tb_categoria (
			id bigint auto_increment ,
            tipo varchar(20) not null,
			receita	varchar(20) not null,
            generico varchar(20)not null,
           primary key(id)
);

insert into tb_categoria (tipo, receita, generico) values ("remedio tosse","sim","sim");
insert into tb_categoria (tipo, receita, generico) values ("remedio tosse","sim","nao");
insert into tb_categoria (tipo, receita, generico) values ("remedio tosse","nao","nao");
insert into tb_categoria (tipo, receita, generico) values ("remedio tosse","nao","sim");
insert into tb_categoria (tipo, receita, generico) values ("nasais","nao","nao");
insert into tb_categoria (tipo, receita, generico) values ("nasais","nao","sim");
insert into tb_categoria (tipo, receita, generico) values ("nasais","sim","nao");
insert into tb_categoria (tipo, receita, generico) values ("nasais","sim","sim");
insert into tb_categoria (tipo, receita, generico) values ("Vitaminas","nao","nao");
insert into tb_categoria (tipo, receita, generico) values ("Vitaminas","nao","sim");
insert into tb_categoria (tipo, receita, generico) values ("Vitaminas","sim","sim");
insert into tb_categoria (tipo, receita, generico) values ("Vitaminas","sim","nao");
insert into tb_categoria (tipo, receita, generico) values ("perfumaria","nao","nao");
insert into tb_categoria (tipo, receita, generico) values ("perfumaria","nao","sim");



	create table tb_farmacia (
    
		id bigint auto_increment,
        nome varchar(50) not null,
        valor int not null,
        dosagem varchar(50) not null,
        marca varchar(55) not null,
		categoria_id bigint,
        
        primary key(id),
        FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
        );
        
        insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values (" Toss ", 8,"100ml","Toss",2);
		insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("benegripe ", 9,"120mlg","generico",4);
		insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("Sinustrat ", 5,"0,5mg","Avert",6);
        insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("papel higienico ", 12,"10r","confort",12);
        insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("desodorante ", 10,"50ml","rexona",12);
        insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("Omega 3 ", 15,"180cap","generico",10);
		insert into tb_farmacia (nome, valor, dosagem, marca, categoria_id) values ("D3 ", 10,"50ml","D3",12);


select * from tb_farmacia;
						
select * from tb_farmacia where valor > 50;

select * from tb_farmacia where valor between 3 and 60;

select * from tb_farmacia where nome like "%b%";

select * from tb_farmacia inner join tb_categoria 
on tb_categoria.id = tb_farmacia.categoria_id ;

select * from tb_farmacia inner join tb_categoria 
on tb_categoria.id = tb_farmacia.categoria_id where marca like "rexona";