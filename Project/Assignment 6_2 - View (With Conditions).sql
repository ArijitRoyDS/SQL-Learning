USE DEMO;

SELECT * FROM EMP;
SELECT * FROM EMP_SAL;

/* DROP VIEW MGR_DETAILS; */

/* CREATE A VIEW TO GET EID, NAME, DOJ, DEPT, DESI, SALARY. ALSO CALCULATE HRA, PF, NET AND GROSS SALARY */
CREATE VIEW MGR_DETAILS
AS
          SELECT EMP.EID, NAME, DOJ, DEPT, DESI
		  FROM EMP
          INNER JOIN EMP_SAL
          ON EMP.EID = EMP_SAL.EID
		  WHERE DESI = 'MGR' AND DOJ BETWEEN '1-JAN-2014' AND '31-DEC-2014';

SELECT * FROM MGR_DETAILS;

