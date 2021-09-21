create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
			id bigint auto_increment ,
            nome varchar(20) not null,
            ataque int not null,
            defesa int not null,
            primary key (id)
);

insert into tb_classe (nome, ataque, defesa) values ("guerreiro" , 2600, 1900);
insert into tb_classe (nome, ataque, defesa) values ("mago" , 3000, 800);
insert into tb_classe (nome, ataque, defesa) values ("arqueiro" , 3600,1600);
insert into tb_classe (nome, ataque, defesa) values ("guardiao" , 2000, 3000);
insert into tb_classe (nome, ataque, defesa) values ("necromante" , 3500, 900);

create table tb_personagem (

			id bigint auto_increment,
            nome varchar(50) not null,
            classe varchar(50) not null,
            nivel int not null,
            sexo varchar(50) not null,
            raça varchar(50) not null,
            classe_id bigint ,
            
            primary key (id),
            FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("gandalf", "mago", 40, "masculino", "humano",2);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("aragorn", "guerreiro" , 35, "masculino", "humano",1);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("legolas", "arqueiro", 25, "masculino", "elfo",3);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("gimli", "guardiao", 39, "masculino", "anao",4);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("frodo", "guerreiro", 12, "masculino", "hobbit",1);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("sam", "guardiao", 15, "masculino", "hobbit",4);

insert into tb_personagem (nome, classe , nivel, sexo, raça,  classe_id) values ("sauron", "necromante", 65, "masculino", "valar",5);

insert into tb_personagem (nome, classe , nivel, sexo, raça, classe_id) values ("elrond", "arqueiro", 80, "masculino", "elfo",3);

select * from tb_personagem ;

select tb_personagem.nome, tb_personagem.classe, tb_personagem.nivel , tb_personagem.sexo , tb_personagem.raça, tb_classe.nome, tb_classe.ataque, tb_classe.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id where ataque > 2000;

UPDATE tb_classe SET ataque = 190 WHERE id = 4;

select tb_personagem.nome, tb_personagem.classe, tb_personagem.nivel , tb_personagem.sexo , tb_personagem.raça, tb_classe.nome, tb_classe.ataque, tb_classe.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id where defesa between 1000 and 2000 ;

select tb_personagem.nome, tb_personagem.classe, tb_personagem.nivel , tb_personagem.sexo , tb_personagem.raça, tb_classe.nome, tb_classe.ataque, tb_classe.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id where tb_personagem.nome like "s%";

select tb_personagem.nome, tb_personagem.classe, tb_personagem.nivel , tb_personagem.sexo , tb_personagem.raça, tb_classe.nome, tb_classe.ataque, tb_classe.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_personagem.classe, tb_personagem.nivel , tb_personagem.sexo , tb_personagem.raça, tb_classe.nome, tb_classe.ataque, tb_classe.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id where classe_id = 3;
 