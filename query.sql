
-- Drop Tables just in case there is a need

-- DROP TABLE new_bitcoin_data_transformed;
-- DROP TABLE new_ethereum_data_transformed IF Exists;

-- Create Table called:  new_bitcoin_data_transformed 

CREATE TABLE new_bitcoin_data_transformed (
unix_timestamp VARCHAR (10),
date date PRIMARY KEY,
high FLOAT(2),
low FLOAT(2),
close FLOAT(2),
open FLOAT(2)
);

-- Create Table called:  new_ethereum_data_transformed 

CREATE TABLE new_ethereum_data_transformed (
unix_timestamp VARCHAR (10),
date date PRIMARY KEY,
high FLOAT(2),
low FLOAT(2),
close FLOAT(2),
open FLOAT(2)
);

-- verify there is data in each table  --

select * from new_bitcoin_data_transformed LIMIT 200;
select * from new_ethereum_data_transformed LIMIT 200;

-- Join the two tables

SELECT new_bitcoin_data_transformed.date,
  new_bitcoin_data_transformed.unix_timestamp,
  new_bitcoin_data_transformed.high,
  new_bitcoin_data_transformed.low,
  new_bitcoin_data_transformed.close,
  new_bitcoin_data_transformed.open,
  new_ethereum_data_transformed.unix_timestamp,
  new_ethereum_data_transformed.high,
  new_ethereum_data_transformed.low,
  new_ethereum_data_transformed.close,
  new_ethereum_data_transformed.open
FROM new_bitcoin_data_transformed
JOIN new_ethereum_data_transformed 
ON new_bitcoin_data_transformed.date = new_ethereum_data_transformed.date;