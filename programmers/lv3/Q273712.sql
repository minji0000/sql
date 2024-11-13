-- 2024-11-13
SELECT A.ITEM_ID,	A.ITEM_NAME,	A.RARITY
FROM ITEM_INFO A JOIN ITEM_TREE B
ON(A.ITEM_ID = B.ITEM_ID)
WHERE B.PARENT_ITEM_ID IS NULL
GROUP BY A.ITEM_ID
ORDER BY A.ITEM_ID DESC;