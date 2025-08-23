{{ config(
    materialized = 'table',
    unique_key = 'id'
)}}

SELECT
    sales_channel,
    COUNT(*) AS order_count,
    SUM(quantity) AS total_quantity,
    SUM(total_sales) AS total_sales,
    SUM(total_revenue) AS total_revenue,
    SUM(is_returned) AS total_returns

FROM {{ ref('sales_report') }}
GROUP BY sales_channel