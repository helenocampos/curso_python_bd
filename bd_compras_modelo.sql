CREATE TABLE cliente (
     nome          VARCHAR(100),
     telefone      VARCHAR(30),
     codigocliente INTEGER PRIMARY KEY);
CREATE TABLE compra (
     data         VARCHAR(10),
     valor        FLOAT(10,2),
     codcliente   INTEGER NOT NULL,
     codigocompra INTEGER PRIMARY KEY,
     FOREIGN KEY (codcliente) REFERENCES cliente(codigocliente));
CREATE TABLE produto (
     nome          VARCHAR(80),
     preco        FLOAT(10,2),
     codigoproduto INTEGER PRIMARY KEY);
CREATE TABLE compraproduto (
     idcompra  INTEGER,
     idproduto INTEGER,
     unidades  INTEGER,
     FOREIGN KEY (idcompra) REFERENCES compra(codigocompra),
     FOREIGN KEY (idproduto) REFERENCES produto(codigoproduto));

INSERT INTO cliente (nome, telefone) VALUES ('Heleno', '21 99999 9999');
INSERT INTO cliente (nome, telefone) VALUES ('Maria', '21 88888 8888');
INSERT INTO cliente (nome, telefone) VALUES ('Marcela', '21 77777 7777');

INSERT INTO produto (nome, preco) VALUES ('Ovo', 1.00);
INSERT INTO produto (nome, preco) VALUES ('Óleo', 5.00);
INSERT INTO produto (nome, preco) VALUES ('Farinha', 5.90);

INSERT INTO compra (data, valor, codcliente) VALUES ('17/06/2024', 15.90, 1);
INSERT INTO compra (data, valor, codcliente) VALUES ('17/06/2024', 1.00, 1);

INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (1,1,5);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (1,2,1);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (1,3,1);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (2,1,1);


INSERT INTO cliente (nome, telefone) VALUES ('Carlos', '21 66666 6666');
INSERT INTO cliente (nome, telefone) VALUES ('Ana', '21 55555 5555');
INSERT INTO cliente (nome, telefone) VALUES ('João', '21 44444 4444');
INSERT INTO cliente (nome, telefone) VALUES ('Laura', '21 33333 3333');
INSERT INTO cliente (nome, telefone) VALUES ('Paulo', '21 22222 2222');


INSERT INTO produto (nome, preco) VALUES ('Arroz', 3.50);
INSERT INTO produto (nome, preco) VALUES ('Feijão', 4.50);
INSERT INTO produto (nome, preco) VALUES ('Macarrão', 2.50);
INSERT INTO produto (nome, preco) VALUES ('Açúcar', 2.90);
INSERT INTO produto (nome, preco) VALUES ('Sal', 1.20);


INSERT INTO compra (data, valor, codcliente) VALUES ('18/06/2024', 7.00, 2); 
INSERT INTO compra (data, valor, codcliente) VALUES ('18/06/2024', 4.50, 3); 
INSERT INTO compra (data, valor, codcliente) VALUES ('18/06/2024', 20.00, 4);
INSERT INTO compra (data, valor, codcliente) VALUES ('18/06/2024', 53.20, 5);
INSERT INTO compra (data, valor, codcliente) VALUES ('18/06/2024', 34.90, 6);

INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (3, 4, 2); 
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (4, 5, 1); 
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (5, 1, 10);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (5, 2, 2);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (6, 3, 3);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (6, 4, 5);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (6, 5, 4);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (7, 6, 2);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (7, 7, 3);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (7, 8, 1);
INSERT INTO compraproduto (idcompra, idproduto, unidades) VALUES (7, 1, 20);


