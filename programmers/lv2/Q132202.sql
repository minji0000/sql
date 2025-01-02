--2025-01-02
SELECT MCDP_CD AS 진료과코드, COUNT(APNT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE APNT_CNCL_YN = 'N'
AND DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
GROUP BY MCDP_CD
ORDER BY 2, 1