CREATE TABLE new_bitcoin_data_transformed (
unix_timestamp VARCHAR (10),
date date PRIMARY KEY,
high FLOAT(2),
low FLOAT(2),
close FLOAT(2),
open FLOAT(2)
);

CREATE TABLE new_ethereum_data_transformed (
unix_timestamp VARCHAR (10),
date date PRIMARY KEY,
high FLOAT(2),
low FLOAT(2),
close FLOAT(2),
open FLOAT(2)
);

select * from new_bitcoin_data_transformed ;
select * from new_ethereum_data_transformed ;