-- 2025-06-11
SELECT *
FROM (

         SELECT   B.EMP_NO
              ,B.EMP_NAME
              ,C.HALF_YEAR
              ,C.SCORE
         FROM HR_DEPARTMENT A INNER JOIN HR_EMPLOYEES B
                                         ON A.DEPT_ID = B.DEPT_ID
                              INNER JOIN HR_GRADE C
                                         ON B.EMP_NO = C.EMP_NO
         WHERE C.HALF_YEAR = '1'

         UNION

         SELECT   B.EMP_NO
              ,B.EMP_NAME
              ,C.HALF_YEAR
              ,C.SCORE
         FROM HR_DEPARTMENT A INNER JOIN HR_EMPLOYEES B
                                         ON A.DEPT_ID = B.DEPT_ID
                              INNER JOIN HR_GRADE C
                                         ON B.EMP_NO = C.EMP_NO
         WHERE C.HALF_YEAR = '2'
     )
-- Every derived table must have its own alias





SELECT   B.EMP_NO
        ,B.EMP_NAME
        ,C.HALF_YEAR
        ,C.SCORE
FROM HR_DEPARTMENT A INNER JOIN HR_EMPLOYEES B
ON A.DEPT_ID = B.DEPT_ID
INNER JOIN HR_GRADE C
ON B.EMP_NO = C.EMP_NO