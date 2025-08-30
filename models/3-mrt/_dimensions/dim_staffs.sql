select
    staff_id, 
    first_name, 
    last_name,
    full_name,
    phone,
    email,
    active,
    store_id,
    manager_l2_name,
    manager_l1_name,
    manager_l0_name,
    hierarchy_depth
from {{ ref('int_dim__staffs') }}