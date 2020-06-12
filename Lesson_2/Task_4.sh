#!/bin/bash
#     --where='where_condition', -w 'where_condition'
#    Dump only rows selected by the given WHERE condition. Quotes around the condition are mandatory if it contains spaces or other characters that are
#    special to your command interpreter.

mysqldump --where="true limit 100" mysql > help_keywords_dump.sql

