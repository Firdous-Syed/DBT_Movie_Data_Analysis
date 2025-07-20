With fct_genome_scores As (
    select * from {{ref('src_genome_scores')}}
)
select
    movie_id,
    tag_id,
    Round(relevance,4) As relevance_score
from    
    fct_genome_scores
Where
    relevance > 0
