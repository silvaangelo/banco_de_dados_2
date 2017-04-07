-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept employeeIdToSearch prompt "Digite o id do funcionario: ";

DECLARE
  employeeIdToSearch INTEGER(11);
  
  TYPE EmployeeRecordType IS RECORD (
    firstName EMPLOYEES.FIRST_NAME%type,
    lastName EMPLOYEES.LAST_NAME%type,
    email EMPLOYEES.EMAIL%type,
    salary EMPLOYEES.SALARY%type
  );

  emp EmployeeRecordType;
BEGIN  
  SELECT FIRST_NAME, LAST_NAME, EMAIL, SALARY INTO emp FROM EMPLOYEES e WHERE EMPLOYEE_ID = &employeeIdToSearch;

  DBMS_OUTPUT.PUT_LINE('Primero nome: ' || emp.firstName);
  DBMS_OUTPUT.PUT_LINE('Ultimo nome: ' || emp.lastName);
  DBMS_OUTPUT.PUT_LINE('E-mail: ' || emp.email);
  DBMS_OUTPUT.PUT_LINE('Salario: ' || emp.salary);
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A