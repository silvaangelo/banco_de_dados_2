-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

accept baseSalary prompt "Digite o salario base: ";

DECLARE
  baseSalary NUMBER(11, 2);
  employeeId EMPLOYEES.EMPLOYEE_ID%TYPE;
  employeeLastName EMPLOYEES.LAST_NAME%TYPE;
  employeeSalary EMPLOYEES.SALARY%TYPE;
  employeeJobId EMPLOYEES.JOB_ID%TYPE;
BEGIN
  baseSalary := &baseSalary;
  
    FOR employee IN (SELECT DISTINCT JOB_ID FROM EMPLOYEES WHERE SALARY > baseSalary) LOOP
         SELECT EMPLOYEE_ID, LAST_NAME, SALARY INTO employeeId, employeeLastName, employeeSalary FROM EMPLOYEES WHERE SALARY = (SELECT DISTINCT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = employee.JOB_ID) AND ROWNUM = 1;
         INSERT INTO TOP_JOBS (ID, NAME, SALARY) VALUES (employeeId, 'employeeLast', employeeSalary);
         
        DBMS_OUTPUT.PUT_LINE(employee.JOB_ID || ' ' || employeeLastName || ' ' || employeeSalary);        
    END LOOP;
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A