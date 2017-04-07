-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept countrySearchId prompt "Digite o id do pais: ";
accept countryName prompt "Digite o novo nome do pais: ";

DECLARE
  countrySearchId INTEGER(11);
  countryName VARCHAR(40);
BEGIN
  countrySearchId := &countrySearchId;

  SELECT COUNTRY_NAME INTO countryName FROM COUNTRIES WHERE COUNTRY_ID = countrySearchId;

  DBMS_OUTPUT.PUT_LINE('Nome do pais: ' || countryName);

  UPDATE COUNTRIES SET COUNTRY_NAME = '&countryName' WHERE COUNTRY_ID = countrySearchId; 

  SELECT COUNTRY_NAME INTO countryName FROM COUNTRIES WHERE COUNTRY_ID = countrySearchId;

  DBMS_OUTPUT.PUT_LINE('Novo nome do pais: ' || countryName);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A