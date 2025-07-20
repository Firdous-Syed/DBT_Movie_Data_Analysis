With raw_movies As (
    Select * from MOVIELENS.RAW.RAW_MOVIES
)
Select
    MovieId As Movie_ID,
    title,
    genres
from
    raw_movies