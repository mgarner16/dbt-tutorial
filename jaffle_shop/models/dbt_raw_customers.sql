WITH CUSTOMERS AS (
    SELECT *
    FROM 's3://dbt-tutorial-public/jaffle_shop_customers.csv' (
        FILE_FORMAT => (
            TYPE = 'CSV'
            FIELD_DELIMITER = ','
            SKIP_HEADER = 1
        )
    )
)
SELECT * FROM CUSTOMERS