select
    -- PK
    oi.order_item_id,
    -- FK
    oi.order_id,
    oi.product_id,

    o.store_id,
    o.customer_id,
    o.staff_id,

    p.category_id,

    -- attributes
    o.order_status_label,
    o.order_date,
    o.shipped_date,

    oi.quantity,
    oi.list_price as order_item_price,
    oi.discount as order_item_discount,
    round(oi.quantity * oi.list_price,2) as total_order_item_amount_before_discount,
    total_order_item_amount,
    round(round(oi.quantity * oi.list_price,2) - total_order_item_amount,2) as order_item_reduction


from {{ ref("stg_order_items") }} oi
    left join {{ ref("stg_orders") }} o using (order_id)
    left join {{ ref("stg_products") }} p using (product_id)