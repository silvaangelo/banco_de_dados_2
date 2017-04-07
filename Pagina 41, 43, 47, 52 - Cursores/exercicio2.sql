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
  employeeJobIdFromTable EMPLOYEES.JOB_ID%TYPE;
  resultCount INTEGER(11);

  CURSOR employeeTopJobCursor IS
   SELECT DISTINCT JOB_ID FROM EMPLOYEES WHERE SALARY > baseSalary;
BEGIN
  baseSalary := &baseSalary;

  OPEN employeeTopJobCursor;
    LOOP
      

      FETCH employeeTopJobCursor INTO employeeJobId;      
        EXIT WHEN employeeTopJobCursor%NOTFOUND;
         SELECT EMPLOYEE_ID, LAST_NAME, SALARY INTO employeeId, employeeLastName, employeeSalary FROM EMPLOYEES WHERE SALARY = (SELECT DISTINCT MAX(SALARY) FROM EMPLOYEES WHERE JOB_ID = employeeJobId) AND ROWNUM = 1;
         INSERT INTO TOP_JOBS (ID, NAME, SALARY) VALUES (employeeId, 'employeeLast', employeeSalary);
         
        DBMS_OUTPUT.PUT_LINE(employeeJobId || ' ' || employeeLastName || ' ' || employeeSalary);        
    END LOOP;
  CLOSE employeeTopJobCursor;
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A