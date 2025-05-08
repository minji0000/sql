-- 2025-05-06
SELECT  C.SCORE
     ,B.EMP_NO
     ,B.EMP_NAME
     ,B.POSITION
     ,B.EMAIL
     ,C.HALF_YEAR
FROM HR_DEPARTMENT A INNER JOIN HR_EMPLOYEES B
                                ON A.DEPT_ID = B.DEPT_ID
                     INNER JOIN HR_GRADE C
                                ON B.EMP_NO = C.EMP_NO
WHERE C.HALF_YEAR IN (1, 2)