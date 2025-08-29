select
    cast(category_id as int) as category_id, 
    cast(category_name as string) as category_name
from {{ source('local_bike','categories')}}