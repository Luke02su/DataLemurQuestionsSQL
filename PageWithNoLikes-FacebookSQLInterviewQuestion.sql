-- Example 1:
SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl
ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL;

-- Example 2:
SELECT p.page_id
FROM pages p
WHERE p.page_id NOT IN (
  SELECT pl.page_id
  FROM page_likes pl
);

-- Example 3:
SELECT p.page_id
FROM pages p
WHERE NOT EXISTS (
  SELECT 1 -- Value true
  FROM page_likes pl
  WHERE p.page_id = pl.page_id
);
