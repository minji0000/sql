--2025-05-03
SELECT  A.DEPT_ID
     ,A.DEPT_NAME_EN
     ,ROUND(AVG(B.SAL), 0) AS AVG_SAL
FROM HR_DEPARTMENT A INNER JOIN HR_EMPLOYEES B
                                ON (A.DEPT_ID = B.DEPT_ID)
GROUP BY A.DEPT_ID
ORDER BY AVG(SAL) DESC

-- 원샷 원킬 꺅
-- ROUND보다 더 좋은 함수 있을 것 같은데 !