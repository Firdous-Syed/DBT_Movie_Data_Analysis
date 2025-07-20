With raw_genome_scores As (
    Select * from MOVIELENS.RAW.RAW_GENOME_SCORES
)
Select
    movieId As Movie_ID,
    tagid As Tag_Id,
    Relevance

from
    raw_genome_scores