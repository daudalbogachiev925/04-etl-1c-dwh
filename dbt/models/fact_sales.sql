SELECT
    dd.date_sk,
    dc.customer_sk,
    dp.product_sk,
    s.qty,
    s.qty * dp.price AS revenue
FROM staging.sales s
JOIN dim_date dd ON dd.full_date = s.sold_at::date
JOIN dim_customers dc ON dc.customer_id = s.customer_id
JOIN dim_products dp ON dp.product_id = s.product_id;
