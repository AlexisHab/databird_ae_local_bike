select
    cast(staff_id as int) as staff_id, 
    cast(first_name as string) as first_name, 
    cast(last_name as string) as last_name,
    concat(cast(first_name as string)," ",cast(last_name as string)) as full_name,
    cast(phone as string) as phone,
    cast(email as string) as email,
    cast(active as int) as active,

    cast(store_id as int) as store_id,
    cast(NULLIF(manager_id,'NULL') as int) as manager_id
from {{ source('local_bike','staffs')}}