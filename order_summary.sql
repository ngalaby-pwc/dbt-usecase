-- dbt model: orders_summary

SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue
FROM {{ source('orders') }}
GROUP BY customer_id
