CREATE OR REPLACE FUNCTION `analytics-dev-333113.yannikolayev.getTrueKeys`(data JSON)
RETURNS ARRAY<STRING>
LANGUAGE js
AS
r"""

  if (!data) return [];
  
  return Object.entries(data)
    .filter(([key, value]) => value === true)
    .map(([key, value]) => key);

""";
