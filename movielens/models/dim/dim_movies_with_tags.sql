{{
    config(materialized='ephemeral')
}}

With movies As (
    Select * from {{ref('dim_movies')}}
),
tags As (
    Select * from {{ref('dim_genome_tags')}}
),
scores As (
    Select * from {{ref('fct_genome_scores')}}
)

Select
    m.Movie_ID,
    m.Movie_Title,
    m.Genres,
    t.tag_name,
    s.relevance_score
from
    movies m 
Left Join scores s on m.Movie_ID = s.Movie_ID
Left Join tags t on t.tag_id = s.tag_id