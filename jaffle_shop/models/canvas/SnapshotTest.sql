WITH generate_random_data AS (
  SELECT
    RANDOM() AS VALUE,
    'Data value' AS TITLE
), snapshottest_sql AS (
  SELECT
    *
  FROM generate_random_data
)
SELECT
  *
FROM snapshottest_sql