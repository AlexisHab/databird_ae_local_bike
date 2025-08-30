select 
    -- axis
    order_date,
    order_status,
    store_id,
    staff_id,
    -- KPIs
    count(*) as order_count,
    sum(total_order_item_amount) as total_sales,
    sum(total_number_items) as nb_items_sold
from {{ ref('int_sales__orders') }}
group by 1,2,3,4