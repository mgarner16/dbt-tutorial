WITH formula_1 AS (
  SELECT
    1 AS ID
), formula_2 AS (
  SELECT
    NULL AS ID
), union_1 AS (
  SELECT
    *
  FROM formula_1
  UNION ALL
  SELECT
    *
  FROM formula_2
), my_first_dbt_model AS (
  SELECT
    *
  FROM union_1
)
SELECT
  *
FROM my_first_dbt_model