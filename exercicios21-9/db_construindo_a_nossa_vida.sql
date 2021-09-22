create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_categoria (
			id bigint auto_increment ,
            tipo varchar(20) not null,
			transporte	varchar(20) not null,
            material varchar(20)not null,
           primary key(id)
);

insert into tb_categoria (tipo, transporte, material) values ("ferramenta","nao","ferro");
insert into tb_categoria (tipo, transporte, material) values ("ferramenta","nao","madeira");
insert into tb_categoria (tipo, transporte, material) values ("ferramenta","nao","plastico");
insert into tb_categoria (tipo, transporte, material) values ("Tinta","nao","Latex");
insert into tb_categoria (tipo, transporte, material) values ("Tinta","nao","Corantes");
insert into tb_categoria (tipo, transporte, material) values ("construção","sim","cimento");
insert into tb_categoria (tipo, transporte, material) values ("construção","nao","arreia");
insert into tb_categoria (tipo, transporte, material) values ("construção","sim","argila");





	create table tb_produto (
    
		id bigint auto_increment,
        nome varchar(50) not null,
        valor int not null,
        peso varchar(50) not null,
        marca varchar(55) not null,
		categoria_id bigint,
        
        primary key(id),
        FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
        );
        
        insert into tb_produto (nome, valor, peso, marca, categoria_id) values (" martelo ", 50,"1klg","maquita",1);
		insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("martelo pressao ", 40,"500klg","maquita",3);
		insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Cabo ", 20,"200klg","cabes",2);
        insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Latao de tinta", 80,"10L","coral",4);
        insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Bisnaga corante ", 8,"50ml","Xadrez",5);
        insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Saco Cimento ", 100,"50klg","caue",6);
        insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Saco Areia ", 120 ,"100klg","Sand",7);
		insert into tb_produto (nome, valor, peso, marca, categoria_id) values ("Telha ", 30,"5klg","Telhadao",8);


select * from tb_produto;
						
select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id ;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id where material like "ferro";