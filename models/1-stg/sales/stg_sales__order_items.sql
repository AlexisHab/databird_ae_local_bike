select
    -- Primary key
    concat(
        cast(order_id as int),
        '-',
        cast(item_id as int)
    ) as order_item_id,

    -- foreign keys
    cast(order_id as int) as order_id,
    cast(product_id as int) as product_id,


    -- attributes
    
    cast(quantity as int) as quantity,

    cast(list_price as float64) as list_price,
    cast(discount as float64) as discount,
    round(cast(quantity*list_price*(1-discount) as float64),2) as total_order_item_amount
 
from {{ source('local_bike','order_items')}}