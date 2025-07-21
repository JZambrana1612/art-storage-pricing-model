
-- Q1: Count of artworks in each storage tier
SELECT 
    storage_tier,
    COUNT(objectnumber) AS artwork_count
FROM 
    museum_storage_pricing
WHERE 
    storage_tier IS NOT NULL AND storage_tier != 'No Volume'
GROUP BY 
    storage_tier
ORDER BY 
    artwork_count DESC;
