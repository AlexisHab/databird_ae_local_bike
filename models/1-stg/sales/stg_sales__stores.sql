select
    cast(store_id as int) as store_id, 
    cast(store_name as string) as store_name, 
    cast(phone as string) as phone,
    cast(email as string) as email,
    cast(street as string) as street,
    cast(city as string) as city,
    cast(state as string) as state,
    cast(zip_code as int) as zip_code
from {{ source('local_bike','stores')}}