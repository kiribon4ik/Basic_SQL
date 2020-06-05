#! /bin/bash

mysqldump example > example_dump.sql
mysql sample < example_dump.sql
mysql -e 'show tables' sample && echo done

