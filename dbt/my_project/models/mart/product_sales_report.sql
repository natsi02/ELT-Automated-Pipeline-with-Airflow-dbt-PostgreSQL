{{ config(
    materialized = 'table',
    unique_key = 'id'
)}}

SELECT
    description,
    COUNT(*) AS order_count,
    SUM(quantity) AS total_quantity,
    SUM(total_sales) AS total_sales,
    SUM(total_revenue) AS total_revenue,
    SUM(is_returned) AS total_returns,
    SUM(CASE WHEN lower(order_priority) = 'high' THEN 1 ELSE 0 END) AS high_priority_orders,
    SUM(CASE WHEN lower(order_priority) = 'medium' THEN 1 ELSE 0 END) AS medium_priority_orders,
    SUM(CASE WHEN lower(order_priority) = 'low' THEN 1 ELSE 0 END) AS low_priority_orders
    
FROM {{ ref('sales_report') }}
GROUP BY description