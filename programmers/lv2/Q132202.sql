--2025-01-06
SELECT MCDP_CD AS 진료과코드, COUNT(APNT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
GROUP BY MCDP_CD
ORDER BY 2, 1

-- 와우,, 맞는 쿼리인데 5월에 예약한 환자수를 구하는 문제에서
-- where절에 예약취소여부를 N으로 두고 구해버렸당..
-- 문제에서 원하지 않은 조건인데 내 주관을 넣어버렸어요 허억