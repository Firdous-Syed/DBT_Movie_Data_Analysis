{{
    config(materialized = 'table')
}}

With raw_tags As (
    Select * from MOVIELENS.RAW.RAW_TAGS
)
Select
    userId As User_ID,
    movieId As Movie_ID,
    tag,
    To_Timestamp_LTZ(timestamp) As Rating_Timestamp
from
    raw_tags