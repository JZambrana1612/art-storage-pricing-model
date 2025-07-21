
-- Q4: Total monthly revenue per storage tier
SELECT 
    storage_tier,
    sensitivity_flag,
    SUM(monthly_storage_price_usd) AS total_monthly_revenue_usd
FROM 
    museum_storage_pricing
WHERE 
    storage_tier IS NOT NULL AND storage_tier != 'No Volume'
GROUP BY 
    storage_tier, sensitivity_flag
ORDER BY 
    total_monthly_revenue_usd DESC;
