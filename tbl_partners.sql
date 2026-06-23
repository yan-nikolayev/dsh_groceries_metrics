CREATE OR REPLACE TABLE `analytics-dev-333113.ryadom.tbl_partners`
AS
SELECT
  t.*,
  os_name
FROM (
  SELECT
    'ryadom' AS partner_name,
    2 AS country_id,
    city_id
  FROM UNNEST([150, 169]) AS city_id

  UNION ALL

  SELECT
    'kravemart' AS partner_name,
    60 AS country_id,
    city_id
  FROM UNNEST([5396, 5388]) AS city_id

  UNION ALL

  SELECT
    'builtamart' AS partner_name,
    16 AS country_id,
    city_id
  FROM UNNEST([5421]) AS city_id
  
  ) t,
  UNNEST(['android', 'ios']) AS os_name;

