select
    cast(staff_id as string) as staff_id, 
    cast(first_name as string) as first_name, 
    cast(last_name as string) as last_name,
    cast(phone as string) as phone,
    cast(email as string) as email,
    cast(active as int) as active,

    cast(store_id as int) as store_id,
    cast(manager_id as string) as manager_id,
from {{ source('local_bike','staffs')}}