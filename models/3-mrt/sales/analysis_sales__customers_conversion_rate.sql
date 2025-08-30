with orders_by_cust as (
    select 
        customer_id,

        sum(total_number_items) as total_nb_items_purchased,
        round(sum(total_order_item_amount),2) as total_amount_spent,
        max(order_date) as most_recent_purchase,
        DATE_DIFF(
            '2021-01-01', -- "today"
            max(order_date),
            DAY
        ) as days_since_last_purchase

    from {{ ref('int_sales__orders') }}
    group by 1

),
customers_conversion_rate as (
    select 
        customer_id,

        coalesce(o.total_nb_items_purchased,0) as total_nb_items_purchased,
        coalesce(o.total_amount_spent,0) as total_amount_spent,
        coalesce(o.most_recent_purchase,'1900-01-01') as most_recent_purchase,
        coalesce(o.days_since_last_purchase,-1) as days_since_last_purchase,

        case
            when o.total_nb_items_purchased is null then 0
            else 1 end as has_made_a_purchase

    from {{ ref('stg_sales__customers') }} c
    left join orders_by_cust o using (customer_id)
)

select * from customers_conversion_rate