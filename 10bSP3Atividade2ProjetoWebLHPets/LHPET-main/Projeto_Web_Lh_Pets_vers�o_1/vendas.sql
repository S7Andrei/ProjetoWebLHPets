CREATE DATABASE IF NOT EXISTS vendas;

USE vendas;

CREATE TABLE IF NOT EXISTS tblclientes (
    cpf_cnpj VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(30),
    endereco VARCHAR(50),
    rg_ie VARCHAR(15),
    tipo CHAR(1),
    valor FLOAT,
    valor_imposto FLOAT,
    total FLOAT
);

INSERT INTO tblclientes VALUES ('123.456.789-00', 'Pedro da Silva', 'Rua Vergueiro 1234', '4.567.890', 'f', 2500.00, 250.00, 2750.00);
INSERT INTO tblclientes VALUES ('234.567.890-11', 'Maria Pereira', 'Rua São Bento 345', '5.6787.901', 'f', 3000.00, 300.00, 3300.00);
INSERT INTO tblclientes VALUES ('345.678.901-22', 'Leonora Alvez', 'Rua Parati 654', '6.789.012', 'f', 1500.00, 150.00, 1650.00);

INSERT INTO tblclientes VALUES ('56.789.123/0001-00', 'Virtual Tecnologia S/A', 'Av. Brasil 3456', '567.890.123', 'j', 35000.00, 7000.00, 42000.00);
INSERT INTO tblclientes VALUES ('67.890.234/0001-11', 'J&M Associados Ltda.', 'Rua Paraná 765', '678.901.234', 'j', 15000.00, 3000.00, 18000.00);
INSERT INTO tblclientes VALUES ('89.012.345/0001-22', 'Alvorada Empreendimentos S/A', 'Av. Constantino Alves 876', '890.123.456', 'j', 50000.00, 10000.00, 60000.00);

SELECT * FROM tblclientes;
