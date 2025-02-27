
-- Switching the context to the COUNTRIES schema
USE countries;

-- This will only work when the COUNTRIES schema is the active schema
select id, name from regions;