
-- Q3: Average monthly storage price for each tier (optionally split by sensitivity)
SELECT 
    storage_tier,
    sensitivity_flag,
    ROUND(AVG(monthly_storage_price_usd), 2) AS avg_price_usd
FROM 
    museum_storage_pricing
WHERE 
    storage_tier IS NOT NULL AND storage_tier != 'No Volume'
GROUP BY 
    storage_tier, sensitivity_flag
ORDER BY 
    storage_tier;
