With raw_genome_tags As (
    Select * from MOVIELENS.RAW.RAW_GENOME_TAGS
)
Select
    tagid As Tag_Id,
    tag

from
    raw_genome_tags