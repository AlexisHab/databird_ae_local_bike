select
    -- Primary Key
    cast(product_id as int) as product_id,
    -- Foreign Key
    cast(brand_id as int) as brand_id,
    cast(category_id as int) as category_id,

    -- Attributes
    cast(product_name as string) as product_name,
    cast(model_year as int) as model_year,
    cast(list_price as float64) as list_price

from {{ source('local_bike','products')}}