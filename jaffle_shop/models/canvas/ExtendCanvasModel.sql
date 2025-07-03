WITH rowgenerator AS (
  SELECT
    *
  FROM {{ ref('jaffle_shop', 'RowGenerator') }}
), generate_more_data AS (
  SELECT
    *,
    'Data Title' AS TITLE,
    RANDOM() AS RANDOM_QUANTITY
  FROM rowgenerator
), extendcanvasmodel_sql AS (
  SELECT
    *
  FROM generate_more_data
)
SELECT
  *
FROM extendcanvasmodel_sql