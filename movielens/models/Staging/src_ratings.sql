{{
    config(materialized = 'table')
}}

With raw_ratings As (
    Select * from MOVIELENS.RAW.RAW_RATINGS
)
Select
    UserId As User_ID,
    MovieId As Movie_ID,
    rating,
    To_Timestamp_LTZ(timestamp) As Rating_Timestamp
from
    raw_ratings