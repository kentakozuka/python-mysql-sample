#/bin/bash

mysql -h mysql -P 3306 -u root -p root < create_tables.sql > out.txt
