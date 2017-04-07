-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept baseSalary prompt "Digite o salario base: ";

DECLARE
  baseSalary NUMBER(11, 2);
  employeeId EMPLOYEES.SALARY%TYPE;
  employeeFirstName EMPLOYEES.FIRST_NAME%TYPE;
  employeeLastName EMPLOYEES.LAST_NAME%TYPE;
  employeeSalary EMPLOYEES.SALARY%TYPE;

  CURSOR employeeSalaryCursor (salary NUMBER) IS
   SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY  FROM EMPLOYEES WHERE SALARY > salary;
BEGIN
  baseSalary := &baseSalary;

  OPEN employeeSalaryCursor(baseSalary);
    LOOP
      FETCH employeeSalaryCursor INTO employeeId, employeeFirstName, employeeLastName, employeeSalary;      
        EXIT WHEN employeeSalaryCursor%NOTFOUND;         
         
        DBMS_OUTPUT.PUT_LINE(employeeId || ' ' || employeeLastName || ' ' || employeeSalary);        
    END LOOP;
  CLOSE employeeSalaryCursor;
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A