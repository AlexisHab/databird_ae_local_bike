select
    customer_id, 
    first_name as `first name`, 
    last_name as `last name`,
    city,
    state,
    zip_code,
from {{ ref('stg_sales__customers') }}