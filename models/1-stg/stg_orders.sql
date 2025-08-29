select
    -- Primary key
    cast(order_id as int) as order_id,

    -- foreign keys
    cast(customer_id as int) as customer_id, 
    cast(store_id as int) as store_id,
    cast(staff_id as int) as staff_id,

    -- attributes
    
    cast(order_status as int) as order_status,

    cast(required_date as date) as required_date,
    cast(order_date as date) as order_date,
    cast(NULLIF(shipped_date,'NULL') as date) as shipped_date
 
from {{ source('local_bike','orders')}}