-- Athena external table for AWS Cost Explorer CSV exports
-- This table reads cost data stored in Amazon S3

CREATE EXTERNAL TABLE dbforcosts.costs_explorer_raw (
  col1 string,
  col2 string,
  col3 string,
  col4 string,
  col5 string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  'separatorChar' = ',',
  'skip.header.line.count' = '1'
)
LOCATION 's3://finops-costpack/raw/cost-explorer/';
