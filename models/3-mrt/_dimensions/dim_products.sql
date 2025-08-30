select 
    product_id,
    
    -- Attributes
    product_name,
    model_year,
    list_price as current_price,
    brand_name,
    category_name
from {{ ref('int_dim__product_brand_category') }}