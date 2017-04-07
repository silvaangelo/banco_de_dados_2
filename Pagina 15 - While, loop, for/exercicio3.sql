-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept countryId prompt "Digite o id do pais: ";
accept countryName prompt "Digite o nome do pais: ";
accept regionId prompt "Digite o id da regiao";

DECLARE
  countryId INTEGER(11);
  countryName VARCHAR(40);
  regionId INTEGER(11);
BEGIN
  INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES (&countryId, '&countryName', &regionId);

  DBMS_OUTPUT.PUT_LINE('Pais foi cadastrado com sucesso!!!!');
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A