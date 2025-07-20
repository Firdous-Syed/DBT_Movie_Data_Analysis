With raw_links As (
    Select * from MOVIELENS.RAW.RAW_LINKS
)
Select
    MovieId As Movie_ID,
    imdbId As Imdb_Id,
    tmdbId As Tmdb_Id
from
    raw_links