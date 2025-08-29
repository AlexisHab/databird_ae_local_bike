select
    -- Primary key
    concat(cast(store_id as string),'-',cast(product_id as int)) as stock_id,

    -- foreign keys
    cast(store_id as int) as store_id, 
    cast(product_id as int) as product_id, 

    -- attributes

    cast(quantity as int) as quantity
from {{ source('local_bike','stocks')}}