with dim_users_ratings AS(
    select distinct user_id from {{ ref('src_ratings')}}
),
dim_users_tags AS(
    select distinct user_id from {{ ref('src_tags')}}
)
select distinct user_id  
from 
(
    select * from dim_users_ratings 
    union 
    select * from dim_users_tags
)
