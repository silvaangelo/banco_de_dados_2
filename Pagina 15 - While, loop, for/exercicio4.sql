-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

DECLARE
  countryCount INTEGER(11);
  countLoop INTEGER(11);
  result INTEGER(11);
BEGIN
  SELECT COUNT(*) INTO countryCount FROM COUNTRIES;
  
  countLoop := countryCount-1;
  result := countryCount;
  
  LOOP
    result := result * countLoop;
    countLoop := countLoop-1;
    EXIT WHEN countLoop = 1;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Fatorial da quantidade de paises cadastrados: ' || result);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A