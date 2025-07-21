
-- Create table for museum artwork pricing
CREATE TABLE museum_storage_pricing (
    objectnumber VARCHAR(50),
    Medium TEXT,
    material_type VARCHAR(100),
    sensitivity_flag VARCHAR(50),
    volume_cm3 FLOAT,
    storage_tier VARCHAR(50),
    base_price_usd DECIMAL(10,2),
    climate_fee_usd DECIMAL(10,2),
    monthly_storage_price_usd DECIMAL(10,2),
    museum_source VARCHAR(10)
);
