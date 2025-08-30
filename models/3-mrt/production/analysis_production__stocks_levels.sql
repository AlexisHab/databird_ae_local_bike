select

    s.stock_id,
    s.store_id,
    product_id,
    p.product_name,
    p.category_name,
    p.brand_name,
    p.model_year,
    s.quantity,

    case
        when extract(year from date('2019-01-01')) - p.model_year <= 1 and quantity = 0
        then 'alert - recent model no stock'
        when extract(year from date('2019-01-01')) - p.model_year <= 1 and quantity <= 5
        then 'warning - recent model low stock (<= 5)'
        when extract(year from date('2019-01-01')) - p.model_year > 1 and quantity >= 5
        then 'warning - old model high stock (>= 5)'
        else '-'
    end as stock_warning

from {{ ref("stg_production__stocks") }} s
left join {{ ref("int_dim__product_brand_category") }} p using (product_id)
