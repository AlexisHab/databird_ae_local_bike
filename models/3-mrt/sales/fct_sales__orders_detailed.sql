select
    -- PK
    order_item_id,
    -- FK
    order_id,
    product_id,

    store_id,
    customer_id,
    staff_id,

    -- attributes
    order_status,
    order_date,
    shipped_date,

    quantity,
    order_item_price,
    order_item_discount,
    total_order_item_amount_before_discount,
    total_order_item_amount,
    order_item_reduction


from {{ ref('int_sales__orders_detailed') }}