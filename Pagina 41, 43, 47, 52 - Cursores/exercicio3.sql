-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

DECLARE
  departmentId DEPARTMENTS.DEPARTMENT_ID%TYPE;
  departmentName DEPARTMENTS.DEPARTMENT_NAME%TYPE;

BEGIN
    FOR department IN (SELECT DEPARTMENT_ID, DEPARTMENT_NAME FROM DEPARTMENTS WHERE DEPARTMENT_NAME LIKE '%IT%') LOOP         
        DBMS_OUTPUT.PUT_LINE(department.DEPARTMENT_ID || ' ' || department.DEPARTMENT_NAME);        
    END LOOP;
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A