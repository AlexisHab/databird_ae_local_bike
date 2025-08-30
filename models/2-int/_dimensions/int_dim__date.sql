WITH date_range AS (
    SELECT 
        MIN(order_date) AS min_date,
        GREATEST(MAX(shipped_date),MAX(order_date)) AS max_date
    FROM {{ ref('stg_sales__orders') }}
),
list_of_dates AS(
    SELECT
        d,
        cast('2019-01-01' as date) as today
    FROM UNNEST(
    GENERATE_DATE_ARRAY(
        (SELECT min_date FROM date_range),
        (SELECT max_date FROM date_range),
        INTERVAL 1 DAY
        )
    ) AS d
    ORDER BY d
),
dim_date AS (
    SELECT
        d AS date_id,
        d AS date_value,
        FORMAT_DATE('%Y-%m', d) AS year_month,
        FORMAT_DATE('%F', d) AS year_month_day,
        EXTRACT(YEAR FROM d) AS year,
        EXTRACT(MONTH FROM d) AS month,
        FORMAT_DATE('%m', d) AS month_padded,
        EXTRACT(DAY FROM d) AS day,
        FORMAT_DATE('%d', d) AS day_padded,
        FORMAT_DATE('%u', d) AS day_of_week, -- 1=Monday
        FORMAT_DATE('%j', d) AS day_of_year,
        FORMAT_DATE('%Q', d) AS quarter,
        FORMAT_DATE('%V', d) AS week_number,
        CASE 
            WHEN DATE_DIFF(today,d,MONTH) = 0 THEN 1
            ELSE 0 END as is_current_month,
        CASE 
            WHEN DATE_DIFF(today,d,MONTH) < 3 THEN 1
            ELSE 0 END as is_last_3_month,
        CASE 
            WHEN DATE_DIFF(today,d,MONTH) < 6 THEN 1
            ELSE 0 END as is_last_6_month   
        
    FROM list_of_dates
)
SELECT * FROM dim_date