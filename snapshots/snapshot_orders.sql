{% snapshot snapshot_orders %}

{%set new_schema = target.schema + '_snapshot'%}

{{
    config(
      target_database='DEMO_PRD',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at'
    )
}}

select * from DEMO_RAW.public.orders

{% endsnapshot %}