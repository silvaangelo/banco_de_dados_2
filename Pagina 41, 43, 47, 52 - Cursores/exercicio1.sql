-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A
SET SERVEROUTPUT ON

DECLARE
  departmentId DEPARTMENTS.DEPARTMENT_ID%TYPE;
  departmentName DEPARTMENTS.DEPARTMENT_NAME%TYPE;

  CURSOR departmentCursor IS
    SELECT DEPARTMENT_ID, DEPARTMENT_NAME
    FROM DEPARTMENTS WHERE DEPARTMENT_NAME LIKE '%IT%';
BEGIN
  OPEN departmentCursor;
    LOOP
      FETCH departmentCursor INTO departmentId, departmentName;
      EXIT WHEN departmentCursor%NOTFOUND;

      DBMS_OUTPUT.PUT_LINE(TO_CHAR(departmentId) || ' ' || departmentName);
    END LOOP;
  CLOSE departmentCursor;
END;
-- Nome:       Angelo Rodrigo Ribeiro da Silva
-- Prontuário: 1670093
-- Turma:      A