With dim_genome_tags As (
    select * from {{ref('src_genome_tags')}}
)
select
    Tag_id,
    INITCAP(TRIM(tag)) As tag_name
from
    dim_genome_tags
