select
    -- PK
    order_id,
    --FK 
    store_id,
    customer_id,
    staff_id,

    -- attributes
    order_status_label,
    order_date,
    shipped_date,

    SUM(quantity) as total_number_items,
    round(SUM(total_order_item_amount),2) as total_order_item_amount,
    round(SUM(total_order_item_amount_before_discount),2) as total_order_amount_before_discount,
    round(SUM(order_item_reduction),2) as total_order_reduction,
    round(SAFE_DIVIDE(
        SUM(order_item_reduction),
        SUM(total_order_item_amount_before_discount)
        ),2) as order_discount

from {{ ref('int_sales__orders_detailed') }}
group by
    order_id,
    store_id,
    customer_id,
    staff_id,
    order_status_label,
    order_date,
    shipped_date