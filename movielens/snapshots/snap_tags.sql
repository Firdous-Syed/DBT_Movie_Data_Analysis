{% snapshot snap_tags %}
{{
    config(
        target_schema='snapshots',
        unique_key=['user_id', 'movie_id', 'tag'],
        strategy='timestamp',
        updated_at='Rating_Timestamp',
        invalidate_hard_deletes=True
    )
}}

SELECT
    {{ dbt_utils.generate_surrogate_key(['user_id', 'movie_id', 'tag']) }} AS row_key,
    user_id,
    movie_id,
    tag,
    CAST(Rating_Timestamp AS TIMESTAMP_NTZ) AS Rating_Timestamp
FROM
    {{ ref('src_tags') }}
LIMIT 100

{% endsnapshot %}