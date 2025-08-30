select 
    product_id,
    
    -- Attributes
    p.product_name,
    p.model_year,
    p.list_price,
    b.brand_name,
    c.category_name
from {{ ref('stg_production__products') }} p
left join {{ ref('stg_production__brands') }} b using (brand_id)
left join {{ ref('stg_production__categories') }} c using (category_id)