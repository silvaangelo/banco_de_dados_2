-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

declare
  countrySearchId INTEGER(11);
  countryName VARCHAR(255);
begin
  SELECT COUNTRY_NAME INTO countryName FROM COUNTRIES WHERE COUNTRY_ID = &countrySearchId;

  DBMS_OUTPUT.PUT_LINE('Nome do pais: ' || countryName);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A