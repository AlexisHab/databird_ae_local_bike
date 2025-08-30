WITH staff as (
    select
        staff_id, 
        first_name, 
        last_name,
        full_name,
        phone,
        email,
        active,
        store_id,
        coalesce(manager_id,staff_id) as manager_id
    from {{ ref('stg_sales__staffs') }}
),
staff_hierarchy as (
    select
        s.*,
        -- lvl 2
        coalesce(l2.staff_id,s.staff_id) as manager_l2_id,
        coalesce(l2.full_name,s.full_name) as manager_l2_name,
        -- lvl 1
        coalesce(l1.staff_id,l2.staff_id) as manager_l1_id,
        coalesce(l1.full_name,l2.full_name) as manager_l1_name,

        -- lvl 0
        coalesce(l0.staff_id,l1.staff_id) as manager_l0_id,
        coalesce(l0.full_name,l1.full_name) as manager_l0_name

    from staff s
    left join staff l2 on s.manager_id = l2.staff_id
    left join staff l1 on l2.manager_id = l1.staff_id
    left join staff l0 on l1.manager_id = l0.staff_id
),
staff_depth as (
    select 
        *,
        CASE 
            WHEN manager_l0_id = staff_id THEN 0
            WHEN manager_l2_id = manager_l0_id THEN 1
            WHEN manager_l1_id = manager_l0_id THEN 2
            ELSE 3 END as hierarchy_depth
    from staff_hierarchy
)


select * from staff_depth