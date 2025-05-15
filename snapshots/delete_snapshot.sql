{% snapshot delete_snapshot %}
    {{
        config(
            target_schema='snapshot',
            unique_key='id',
            strategy='check',
            check_cols=['full_name','phone'],
            invalidate_hard_deletes=True
         
        )
    }}

    select * from {{ source('datafeed_shared_schema', 'customers') }}
 {% endsnapshot %}