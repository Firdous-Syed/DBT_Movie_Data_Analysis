{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
    
}}
With fct_ratings As (
    Select * From {{ref('src_ratings')}}
)
Select
    User_id,
    Movie_id,
    Rating,
    Rating_Timestamp
From
    fct_ratings
Where
    Rating IS NOT NULL
    
{% if is_incremental()%}
    AND Rating_Timestamp > (Select Max(Rating_Timestamp) From {{this}})
{% endif %}