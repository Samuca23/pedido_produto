
CREATE TABLE produto (
                procodigo INT AUTO_INCREMENT NOT NULL,
                pronome VARCHAR(20) NOT NULL,
                prodescricao VARCHAR(100) NOT NULL,
                provalor DECIMAL(10,2) NOT NULL,
                PRIMARY KEY (procodigo)
);


CREATE TABLE pedido (
                pedcodigo INT AUTO_INCREMENT NOT NULL,
                procodigo INT NOT NULL,
                PRIMARY KEY (pedcodigo, procodigo)
);


CREATE TABLE CADASTRO (
                cadcodigo INT AUTO_INCREMENT NOT NULL,
                CADLOGIN VARCHAR(100) NOT NULL,
                cadsenha VARCHAR(20) NOT NULL,
                PRIMARY KEY (cadcodigo)
);


ALTER TABLE pedido ADD CONSTRAINT produto_pedido_fk
FOREIGN KEY (procodigo)
REFERENCES produto (procodigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
