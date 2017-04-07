-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept employeeId prompt "Digite o id do funcionario: ";

DECLARE
  employeeId INTEGER(11);
  employeeRecord EMPLOYEES%ROWTYPE;
BEGIN  
  SELECT * INTO employeeRecord FROM EMPLOYEES WHERE EMPLOYEE_ID = &employeeId;

  DBMS_OUTPUT.PUT_LINE('Id: ' || employeeRecord.EMPLOYEE_ID);
  DBMS_OUTPUT.PUT_LINE('Nome completo: ' || employeeRecord.FIRST_NAME || ' ' || employeeRecord.LAST_NAME);
  DBMS_OUTPUT.PUT_LINE('E-mail: ' || employeeRecord.EMAIL);
  DBMS_OUTPUT.PUT_LINE('Telefone: ' || employeeRecord.PHONE_NUMBER);
  DBMS_OUTPUT.PUT_LINE('Data de contratacao: ' || employeeRecord.HIRE_DATE);
  DBMS_OUTPUT.PUT_LINE('Id do cargo: ' || employeeRecord.JOB_ID);
  DBMS_OUTPUT.PUT_LINE('Salario: ' || employeeRecord.EMPLOYEE_ID);
  DBMS_OUTPUT.PUT_LINE('Comissao: ' || employeeRecord.COMMISSION_PCT);
  DBMS_OUTPUT.PUT_LINE('Id do gerente: ' || employeeRecord.MANAGER_ID);
  DBMS_OUTPUT.PUT_LINE('Id do departamento: ' || employeeRecord.DEPARTMENT_ID);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A