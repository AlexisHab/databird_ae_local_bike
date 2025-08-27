select
    cast(brand_id as int) as brand_id, 
    cast(brand_name as string) as brand_name
from {{ source('local_bike','brands')}}