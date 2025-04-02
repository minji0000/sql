-- 2025-04-03
SELECT *
FROM USED_GOODS_BOARD A INNER JOIN USED_GOODS_FILE B
ON(A.BOARD_ID = B.BOARD_ID)
WHERE A.BOARD_ID = (
                        SELECT BOARD_ID
                        FROM USED_GOODS_BOARD
                        ORDER BY VIEWS DESC
                        LIMIT 1
                    )