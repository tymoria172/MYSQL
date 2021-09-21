create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
			id bigint auto_increment ,
            tamanho varchar(20) not null,
            tipo varchar(20) not null,
           primary key(id)
);

insert into tb_categoria (tamanho, tipo) values ("grande","doce");
insert into tb_categoria (tamanho, tipo) values ("media","doce");
insert into tb_categoria (tamanho, tipo) values ("pequena","doce");
insert into tb_categoria (tamanho, tipo) values ("grande","salgada");
insert into tb_categoria (tamanho, tipo) values ("media","salgada");
insert into tb_categoria (tamanho, tipo) values ("pequena","salgada");

	create table tb_pizza (
    
		id bigint auto_increment,
        sabor varchar(50) not null,
        valor int not null,
        tempo varchar(50) not null,
        brinde varchar(55) not null,
        klg varchar(55) not null,
		categoria_id bigint,
        
        primary key(id),
        FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
        );
        
        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("portuguesa ", 49,"40m","refrigerante","90klg",4);
                insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("portuguesa ", 35,"40m","refrigerante","70klg",5);
					                insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("portuguesa ", 25,"30m","refrigerante","50klg",6);

        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("bacon ", 36,"40m","refigerante","90klg",4);
                insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("bacon ", 30,"40m","refigerante","75klg",5);
					        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("bacon ", 26,"30m","refigerante","50klg",6);


		        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("chocolate ", 32,"40m","refigerante","90klg",1);
							        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("chocolate ", 27,"40m","refigerante","70klg",2);
												        insert into tb_pizza (sabor, valor, tempo, brinde, klg, categoria_id) values ("chocolate ", 20,"30m","refigerante","50klg",3);
	
						
select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id ;

select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id where tipo like "doce";
