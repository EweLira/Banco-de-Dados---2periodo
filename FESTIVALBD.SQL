CREATE TABLE ARTISTA(
                       ARTISTACPF VARCHAR(64) NOT NULL,
                       NOME  varchar(32) NOT NULL,
                       SEXO char(1) NOT NULL,
                       DATA_NASC DATE NOT NULL,
                       TEL  varchar(16),
                       ESTADO_CIVIL    varchar(32) NOT NULL,
                       EMAIL    varchar(64) NOT NULL,
                       PRIMARY KEY (ARTISTACPF)
);
CREATE TABLE PRODUTOR(
                       PRODUTORCPF VARCHAR(64) NOT NULL,
                       NOME  varchar(32) NOT NULL,
                       SEXO char(1) NOT NULL,
                       DATA_NASC DATE NOT NULL,
                       TEL  varchar(16),
                       ESTADO_CIVIL    varchar(32) NOT NULL,
                       EMAIL    varchar(64) NOT NULL,
                       PRIMARY KEY (PRODUTORCPF)
);
CREATE TABLE ESPECTADOR(
                       ESPECTADORCPF VARCHAR(64) NOT NULL,
                       NOME  varchar(32) NOT NULL,
                       SEXO char(1) NOT NULL,
                       DATA_NASC DATE NOT NULL,
                       TEL  varchar(16),
                       ESTADO_CIVIL    varchar(32) NOT NULL,
                       EMAIL    varchar(64) NOT NULL,
                       PRIMARY KEY (ESPECTADORCPF)
);
CREATE TABLE PROGRAMACOES (
    HORARIO TIMESTAMP NOT NULL,
    TITULO VARCHAR(64) NOT NULL,
    PRODUTORA_EVENTOS VARCHAR(64)
);
CREATE TABLE EVENTO(
ID SERIAL NOT NULL,
DATA_EVENTO TIMESTAMP NOT NULL,
VALOR_DO_INGRESSO FLOAT(10) NOT NULL,
 					PRIMARY KEY (ID)
);
CREATE TABLE ENDERECOARTISTA(
   NUM INT NOT NULL,
   RUA VARCHAR (64) NOT NULL,
   COMPLEMENTO VARCHAR (22),
   BAIRRO VARCHAR(64) NOT NULL,
   CIDADE VARCHAR(64) NOT NULL,
   ESTADO VARCHAR(64) NOT NULL,
   CEP VARCHAR (64) NOT NULL,
   CPF VARCHAR,
   FOREIGN KEY (CPF) REFERENCES artista(artistacpf)
);
CREATE TABLE ENDERECOPRODUTOR(
   NUM INT NOT NULL,
   RUA VARCHAR (64) NOT NULL,
   COMPLEMENTO VARCHAR (22),
   BAIRRO VARCHAR(64) NOT NULL,
   CIDADE VARCHAR(64) NOT NULL,
   ESTADO VARCHAR(64) NOT NULL,
   CEP VARCHAR (64) NOT NULL,
   CPF VARCHAR,
   FOREIGN KEY (CPF) REFERENCES produtor(produtorcpf)
);
CREATE TABLE ENDERECOESPECTADOR(
   NUM INT NOT NULL,
   RUA VARCHAR (64) NOT NULL,
   COMPLEMENTO VARCHAR (22),
   BAIRRO VARCHAR(64) NOT NULL,
   CIDADE VARCHAR(64) NOT NULL,
   ESTADO VARCHAR(64) NOT NULL,
   CEP VARCHAR (64) NOT NULL,
   CPF VARCHAR,
   FOREIGN KEY (CPF) REFERENCES espectador(espectadorcpf)
);

INSERT INTO artista VALUES ('567.826.555-51', 'GILBERTO','M', '1973-06-23','98287-6655','SOLTEIRO/A', 'gilgil@uorak.com'),
                         ('134.501.335-35', 'UMI', 'F', '1999-04-11', '9876-5123','SOLTEIRO/A','UMIPAZ@HOTMAIL.COM'),
                         ('725.878.151-00','RIHANNA','F', '1989-05-23', '97621-7232','CASADO/A','RIHANNA@GMAIL.COM'),
                         ('183.124.532-96','BEYONCE','F', '1984-09-30', ' 94598-5432','CASADO/A','BLUEIVY@HOTMAIL.COM'),
                         ('727.626.248-00','AMINE','M', '2001-11-04', '98002-6775','SOLTEIRO/A','JONAMINE@HOTMAIL.COM');


INSERT INTO produtor VALUES ('600.416.841-68', 'LINS','M', '1998-08-27','98666-6545','SOLTEIRO/A', 'LUIZLINS@GMAIL.COM'),
                         ('756.273.678-22', 'FELIPE', 'M', '1997-10-10', '98876-4354','CASADO/A','FEFE@HOTMAIL.COM'),
                         ('760.526.824-69','MICHELLE','F', '1985-08-24', '9771-1432','CASADO/A','MILCHEL@GMAIL.COM'),
                         ('254.278.120-67','EWELLYN','F', '2000-11-24', ' 97114-5421','SOLTEIRO/A','IVYEWE@HOTMAIL.COM');


INSERT INTO espectador VALUES ('75168280846', 'RICARDO','M', '1976-07-03','99433-7852','SOLTEIRO/A', 'lucelly1645@uorak.com'),
                          ('13450133535', 'LIRA', 'M', '1992-11-02', '98954-4521','CASAD0/A','LIRA90@HOTMAIL.COM'),
                          ('79271827732','PEDRO','M', '1984-12-24', '98433-7371','CASADO/A','PEDRO0@HOTMAIL.COM'),
                          ('26832838816','MARIA','F', '1999-09-12', ' 97436-8648','SOLTEIRO/A','MARIAP@HOTMAIL.COM'),
                          ('61067495746','JUSEFA','F', '1990-07-13', '99331-1077','CASADO/A','LJOSEFA87@HOTMAIL.COM'),
                          ('92077811668','HENRIQUE','M', '1985-11-30', '99241-1155','SOLTEIRO/A','HENRLOU@HOTMAIL.COM'),
                          ('08118749908','AMANDA','F', '1996-03-07', '98056-6136','CASADO/A','MANDA543@HOTMAIL.COM');

INSERT INTO programacoes VALUES ('2022-11-12 13:30:00', 'RAPADURA','BRASILPRODUÇÕES'),
                               ('2022-11-13 15:30:00', 'GINGADO','PIUORG'),
                               ('2022-11-14 19:00:00','CARTOLA','LIRAPROD'),
                               ('2022-11-20 00:00:01','LUNA','KAW');

INSERT INTO evento VALUES ('0001', '2022-11-13 15:30:00','75.00'),
                               ('0002','2022-11-13 13:30:00', '85.80'),
                               ('0003','2022-11-14 19:00:00','140.98'),
                               ('0004','2022-11-20 00:00:01','200.00');
INSERT INTO enderecoartista VALUES ('876', 'Nora Prairie','Quadra 7','Bela Vista','Brasília','Distrito Federal','28507-358'),
                                   ('47992', 'Makenna Spring','Apartamento 2','Boa Vista','São Luís','Maranhão','79955-663'),
                                   ('6176', 'Hegmann Stravenue','Quadra 3','Industrial','Ponta Grossa','Paraná','77332-088'),
                                   ('35863', 'eonora Stravenue','Terreo 2','Boa Vista','Ituiutaba','Minas Gerais','03822-514'),
                                   ('876', 'Nora Prairie','Quadra 7','Bela Vista','Brasília','Distrito Federal','28507-358');
INSERT INTO enderecoprodutor VALUES ('913', 'Gaetano Shore','Apartamento 3','São José','Itaperuna','Rio de Janeiro','65223-813'),
                                   ('2010', 'Creola Course','Portão 6','Boa Vista','Corumbá','Mato Grosso do Sul','61826-135'),
                                   ('604', 'Cydney Passage','Aeroporto 7','Santo Antônio','Campina Grande','Paraíba','77349-555'),
                                   ('54983', 'Russel Neck','Sobreloja 4','Centro','Bragança','Pará','29129-249');














