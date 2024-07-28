#!/bin/bash
#!> sql/schema     DELETE  create_table.sql & insert_table.sql
#!> sql/queries    DELETE  basic_queries.sql  advanced_queries.sql
#!> sql/views      DELETE  create_views.sql
#!> sql/procedures DELETE  create_procedures.sql
#! FROM THE DATABSE NOT THE FILES THE COMMIT IT CREATES 
#?> sql/reports -> DELETE  tables 

DB_FILE="./ecommerce.db"
SQL_DIR="./sql/cleanup"


for sql_file in "$SQL_DIR"/*.sql; do
  if [ -f "$sql_file" ]; then
    echo "Running $sql_file..."
    sqlite3 -cmd "PRAGMA busy_timeout=$BUSY_TIMEOUT;" $DB_FILE < "$sql_file"
  else
    echo "No SQL files found in $SQL_DIR."
  fi
done

echo "Database cleanedup."
echo "You All Set"