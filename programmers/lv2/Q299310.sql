--2025-03-17
SELECT   B.YEAR
     ,B.MAX_SIZE
     ,A.ID
FROM ECOLI_DATA A,
     (
         SELECT
             MAX(SIZE_OF_COLONY) AS MAX_SIZE
              ,DATE_FORMAT(DIFFERENTIATION_DATE, '%Y') AS YEAR
         FROM ECOLI_DATA A
         GROUP BY DATE_FORMAT(DIFFERENTIATION_DATE, '%Y')
         HAVING MAX(SIZE_OF_COLONY) ) B
GROUP BY B.YEAR, A.ID