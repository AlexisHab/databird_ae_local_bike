SELECT
    date_id,
    date_value,
    year_month,
    year_month_day,
    year,
    month,
    month_padded,
    day,
    day_padded,
    day_of_week, -- 1=Monday
    day_of_year,
    quarter,
    week_number,
    is_current_month,
    is_last_3_month,
    is_last_6_month   
FROM {{ ref('int_dim__date') }}