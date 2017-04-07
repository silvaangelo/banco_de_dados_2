-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept base prompt "Digite a base da exponenciacao: ";
accept exponent prompt "Digite o exponencial: ";

DECLARE
  base INTEGER(11);
  exponent INTEGER(11);
  expoResult INTEGER(11);
  counter INTEGER(11);
BEGIN
  counter := 1;
  base := &base;
  exponent := &exponent;
  expoResult := base;
  
  LOOP
    expoResult := expoResult * base;
    counter:= counter + 1;
    
    EXIT WHEN counter >= exponent;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('Resultado: ' || expoResult);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A