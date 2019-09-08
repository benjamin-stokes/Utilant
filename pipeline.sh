#!/usr/bin/bash

wget https://data.cityofchicago.org/api/views/4ijn-s7e5/rows.csv?accessType=DOWNLOAD -O ~/tmpdata/chicago.csv
wget https://data.cityofnewyork.us/api/views/43nn-pn8j/rows.csv?accessType=DOWNLOAD -O ~/tmpdata/newyork.csv
wget https://opendata.lasvegasnevada.gov/api/views/q8ye-5kwk/rows.csv?accessType=DOWNLOAD -O ~/tmpdata/lasvegas.csv

aws s3 cp ~/tmpdata/chicago.csv s3://utilantweekendproject/
aws s3 cp ~/tmpdata/newyork.csv s3://utilantweekendproject/
aws s3 cp 
