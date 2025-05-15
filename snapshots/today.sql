{% snapshot today %}

{{ config(
    target_schema = 'snapshot',
    strategy = 'timestamp',
    unique_key = 'id',
    updated_at = 'updated_at'
) }}

select * from {{ source('datafeed_shared_schema', 'customers') }}

{% endsnapshot %}
