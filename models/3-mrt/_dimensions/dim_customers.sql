select
    customer_id, 
    first_name as `first name`, 
    last_name as `last name`,
    phone,
    email,
    street,
    city,
    state,
    zip_code,
from {{ ref('stg_sales__customers') }}