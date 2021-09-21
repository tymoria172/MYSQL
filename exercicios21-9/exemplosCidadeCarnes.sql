create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos order by nome ; -- ordem alfabetica

select * from tb_produtos where preco > 20 and categoria_id = 1; -- consulta aonde o preco seja maior que 20 e a categoria seja 1

select * from tb_produtos where preco > 20 or categoria_id = 1; -- consulta a categoria id 1 ou o preco maior que 20

select * from tb_produtos where not categoria_id = 1; -- nega os produtos com id de 1

select * from tb_produtos where nome like "%ha%"; -- busca por nome no caso o % produto %  o % significa nao importe o começo ou o fim mas que tenha HA na sua composiçao

select * from tb_produtos where preco in (20, 30, 40);-- selecionar todos os produtos seja igual a 20,30,40

select * from tb_produtos where preco between 20 and 40 order by preco ; -- busca por intervalo de dados entre 20 e 40 

select * from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15" order by dtvalidade; -- busca pela data 

select count(categoria_id) from tb_produtos; -- conta a quantidade dentro da tabela para contar quantos itens basta colocar (*)

select sum(preco) from tb_produtos; -- soma todos os preços 

select format (avg(preco),2) as media  from tb_produtos; -- faz a media de todos os precos obs: o " as media" coloca o apelido na tabelo como media obs: o format esta arredondando 

select max(preco) from tb_produtos; -- puxa o maior preço 

select min(preco) from tb_produtos;  -- puxa o menor preço

select * from tb_produtos where preco = (select min(preco) from tb_produtos); -- seleciona tudo aonde o preço seja igual a consulta min. tras todas as informaçoes 

select * from tb_produtos where length(nome)= 3; -- puxa pela quantidade de carctere no caso produtos com 3 caracteres 


-- INNER JOIN ----- JUNCAO , INTERCECÇÃO.
-- coloquei uma tabela na outra, mostrei 2 atributos de cada tabela

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;-- ATRAVES DO ID CATEGORIA COM A ID DA TABELA CATEGORIA

-- LEFT JOIN ---
-- tras tudo que tem assosiação e tudo que nao tem associação com a tabela produtos


select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos left join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

