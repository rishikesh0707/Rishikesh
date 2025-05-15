 {% snapshot todays_check %}
    {{
        config(
            target_schema='snapshot',
            unique_key='id',
            strategy='check',
            check_cols=['full_name','phone']
        )
    }}

    select * from {{ source('datafeed_shared_schema','customers') }}
 {% endsnapshot %} 