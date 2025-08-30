select
    -- PK
    order_id,
    --FK 
    store_id,
    customer_id,
    staff_id,

    -- attributes
    order_status,
    order_date,
    shipped_date,

    total_number_items,
    total_order_item_amount,
    total_order_amount_before_discount,
    total_order_reduction,
    order_discount

from {{ ref('int_sales__orders') }}