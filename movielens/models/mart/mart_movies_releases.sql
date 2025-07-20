{{
    config(materialized = 'table')
}}

With fct_ratings As (
    select * from {{ref('fct_ratings')}}
),
seeds_dates As (
    select * from {{ref('seed_movies_release_dates')}}
)

Select
    f.*,
    case
    when s.release_date is NULL Then 'Unkown'
    else 'Known'
    end As release_info
From fct_ratings f
Left Join seeds_dates s on s.Movie_ID = f.Movie_ID