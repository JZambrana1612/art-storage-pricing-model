
-- Q2: Count and percent of artworks by climate sensitivity
SELECT 
    sensitivity_flag,
    COUNT(objectnumber) AS artwork_count,
    ROUND(
        100.0 * COUNT(objectnumber) / 
        (SELECT COUNT(*) 
         FROM museum_storage_pricing 
         WHERE sensitivity_flag IS NOT NULL),
    1) AS percentage_of_total
FROM 
    museum_storage_pricing
WHERE 
    sensitivity_flag IS NOT NULL
GROUP BY 
    sensitivity_flag
ORDER BY 
    artwork_count DESC;
