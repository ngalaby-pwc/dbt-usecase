-- dbt model: daily_revenue

SELECT
    order_date,
    SUM(total_amount) AS daily_revenue
FROM {{ source('orders') }}
GROUP BY order_date
