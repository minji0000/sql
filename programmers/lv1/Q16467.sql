-- 2024-11-05
SELECT A.TITLE, A.BOARD_ID, B.REPLY_ID, B.WRITER_ID, B.CONTENTS,
TO_CHAR(B.CREATED_DATE, 'YYYY-MM-DD') AS CREATED_DATE
FROM USED_GOODS_BOARD A JOIN USED_GOODS_REPLY B
ON A.BOARD_ID = B.BOARD_ID
WHERE A.CREATED_DATE >= TO_DATE('2022-10', 'YYYY-MM')
AND A.CREATED_DATE < TO_DATE('2022-11', 'YYYY-MM')
ORDER BY B.CREATED_DATE ASC, A.TITLE ASC;