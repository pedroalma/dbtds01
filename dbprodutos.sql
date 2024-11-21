drop database dbprodutosn;

create database dbprodutosn;

use dbprodutosn;

CREATE TABLE PRODUTOS(
CODIGO INT,
NOME VARCHAR(50),
TIPO VARCHAR(25),
QUANTIDADE INT,
VALOR INT
);
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,'IMPRESSORA', 'INFORMATICA', 8,6 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,'MONITOR', 'INFORMATICA', 400, 900.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,'TELEVISOR', 'ELETRONICOS', 350, 650.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,'CELULAR', 'TELEFONE', 450, 850.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,'TECLADO', 'INFORMATICA', 300, 450.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 );
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,'MOUSE', 'INFORMATICA', 400, 60.00 );	

show tables;


desc PRODUTOS;

 select * from PRODUTOS;
select * from  PRODUTOS where nome like "F%";

-- select sqrt( sum(pow(QUANTIDADE,2) + pow(valor,2) ) ) from PRODUTOS where codigo = 1;


-- select nome from PRODUTOS where valor >= 600;
-- select nome from PRODUTOS where QUANTIDADE >=200;
-- select nome from PRODUTOS where QUANTIDADE >= 250 and valor <=300;
-- select nome from PRODUTOS where valor <= 250 or QUANTIDADE= 100;

-- update PRODUTOS set valor = valor * 1.10 where tipo = "INFORMATICA";
-- select * from produtos where tipo ="INFORMATICA";
-- update produtos set quantidade = quantidade + 10 where tipo = "ELETRONICOS" and valor <= 400;	
-- select * from PRODUTOS where tipo = "ELETRONICOS" and valor <= 400;	
-- select * from produtos where tipo not in("INFORMATICA","ELETRONICOS");
-- select * from produtos where valor between 300 and 600;
-- select * from produtos where valor not  between 300 and 600;
-- select * from produtos where NOME like "i%" and tipo like "i%";
-- select * from produtos where NOME like "i%" or tipo like "i%";
-- select * from produtos where NOME like "%s%";
-- select * from produtos where NOME not like "%a%";
-- 1 aumento em 12% o valor dos produtos cujos nomes iniciem com a letra "F"

update PRODUTOS set VALOR = VALOR * 1.12 where nome like "F%";
select * from  PRODUTOS where nome like "F%";

-- 2 Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600
update PRODUTOS set QUANTIDADE = QUANTIDADE + 50 where VALOR  between 400 and 600; 	
select * from PRODUTOS where VALOR  between 400 and 600;	

--3 aplicar um desconto de 50%(*0.5)em todos os produtos que as unidades de estoque sejam maiores que 300
update PRODUTOS set VALOR = VALOR * 0.5 where QUANTIDADE >=300;
select * from PRODUTOS where VALOR;	
--4 exiba o produto de codigo = 4
select * from PRODUTOS where CODIGO = 4;
--5 exibir todos os produtos que nao tenham a letra "Y" 
select * from PRODUTOS where nome not like "%Y%";
--6 exibir todos os produtos que se iniciem com nome  "mo" e tenham como tipo as letras "ma"
select * from PRODUTOS where nome like "MO%" and TIPO like "%MA%";