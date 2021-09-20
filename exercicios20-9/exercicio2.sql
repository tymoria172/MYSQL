CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_catalogo (
	id bigint auto_increment,
    produto varchar (255) not null,
    marca varchar(255) not null,
    preco decimal  not null,
    tamanho varchar(255) not null,
    tecido varchar (255) not null,
    primary key (id)
    );
    
    INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("camiseta", "puma", 150.00, "G", "poliester");

    INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("camiseta", "adidas", 50.00, "M", "Algodao");
    
        INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("calça", "nike", 350.00, "44", "jeans");
        
            INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("blusa", "pallace", 650.00, "G", "poliester");
            
                INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("regata", "jordan", 550.00, "G", "poliester");
                
                    INSERT INTO tb_catalogo(produto, marca, preco, tamanho, tecido) VALUES ("camiseta", "nike", 80.00, "p", "Algodao");
     -- produtos com preço maior que 500.00               
 SELECT * FROM tb_catalogo;                   
 SELECT * FROM tb_catalogo WHERE id =   4;     
  SELECT * FROM tb_catalogo WHERE id =   5;    
  
  UPDATE tb_catalogo SET preco = 650.00 WHERE id = 4;
  UPDATE tb_catalogo SET preco = 550.00 WHERE id = 5;
  
  -- produtos com preço menor que 500
  
   SELECT * FROM tb_catalogo WHERE id =   1;     
  SELECT * FROM tb_catalogo WHERE id =   2;  