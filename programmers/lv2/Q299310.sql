--2025-03-16
WITH X AS
         (
             SELECT    DATE_FORMAT(DIFFERENTIATION_DATE, '%Y') YEAR
                  , MAX(SIZE_OF_COLONY) SIZE
FROM ECOLI_DATA
GROUP BY DATE_FORMAT(DIFFERENTIATION_DATE, '%Y')
HAVING MAX(SIZE_OF_COLONY)
    )

SELECT   X1.YEAR
     ,X1.SIZE - A.SIZE_OF_COLONY
     ,A.ID
FROM ECOLI_DATA A
   ,X X1
