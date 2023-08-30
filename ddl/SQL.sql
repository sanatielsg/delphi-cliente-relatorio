﻿--CREATE DATABASE PROGRAMA;

--CREATE SEQUENCE SEQ_CLI_CODIGO;
/*
CREATE TABLE CLIENTE (
  CLI_CODIGO          INTEGER NOT NULL PRIMARY KEY DEFAULT NEXTVAL('SEQ_CLI_CODIGO') ,
  CLI_NOME            VARCHAR(100),
  CLI_CPF             VARCHAR(11),
  CLI_RG              VARCHAR(20),
  CLI_CNPJ            VARCHAR(14),
  CLI_ENDERECO        VARCHAR(150),
  CLI_NUMERO          VARCHAR(10),
  CLI_CEP             VARCHAR(8),
  CLI_CIDADE          VARCHAR(30),
  CLI_UF              VARCHAR(2),
  CLI_LIMITE_CREDITO  NUMERIC(10,2),
  CLI_RAZAO_SOCIAL    VARCHAR(100),
  CLI_NOME_FANTASIA   VARCHAR(100),
  CLI_DATA_NASCIMENTO DATE,
  CLI_DTHR_CADASTRO   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
*/
--COMMENT ON COLUMN CLIENTE.CLI_TIPO_PESSOA IS '1-PESSOA FISICA, 2-PESSOA JURIDICA';
--------------------------------------------------------------------

INSERT INTO CLIENTE(
	CLI_NOME           
	,CLI_CPF            
	,CLI_RG             
	,CLI_CNPJ           
	,CLI_ENDERECO       
	,CLI_NUMERO         
	,CLI_CEP            
	,CLI_CIDADE         
	,CLI_UF             
	,CLI_LIMITE_CREDITO 
	,CLI_RAZAO_SOCIAL   
	,CLI_NOME_FANTASIA  
	,CLI_DATA_NASCIMENTO
)
SELECT 
	'JOÃO DE DEUS GOMES DOS SANTOS'
	,'20437383059'
	,'13354384'
	,NULL 
	,'RUA DAS RUAS'
	,'999'
	,'64000000'
	,'TERESINA'
	,'PI'
	,3000.05
	,NULL
	,NULL
	,'2000-09-11'
;  

-----------------------------------------------------------------------
INSERT INTO CLIENTE(
	CLI_NOME           
	,CLI_CPF            
	,CLI_RG             
	,CLI_CNPJ           
	,CLI_ENDERECO       
	,CLI_NUMERO         
	,CLI_CEP            
	,CLI_CIDADE         
	,CLI_UF             
	,CLI_LIMITE_CREDITO 
	,CLI_RAZAO_SOCIAL   
	,CLI_NOME_FANTASIA  
	,CLI_DATA_NASCIMENTO
)
SELECT 
	NULL
	,NULL
	,NULL
	,'81732059000176' 
	,'ALGUMA RUA'
	,'1000A'
	,'65000000'
	,'TIMOM'
	,'MA'
	,12000
	,'MARIA MARIA ME'
	,'MARIA DOCES'
        ,NULL
;  
-----------------------------------------------------------------------

SELECT * FROM CLIENTE






