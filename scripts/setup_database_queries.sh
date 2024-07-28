#!/bin/bash

DB_FILE="./ecommerce.db"
BUSY_TIMEOUT=5000

FIRST_FILE="sql/schema/create_tables.sql"
SECOND_FILE="sql/schema/insert_data.sql"
THIRD_FILE="sql/queriesAndView/views.sql"

run_sql_file() {
  local sql_file="$1"
  if [ -f "$sql_file" ]; then
    echo "Running $sql_file..."
    sqlite3 -cmd "PRAGMA busy_timeout=$BUSY_TIMEOUT;" $DB_FILE < "$sql_file"
    echo "$sql_file executed successfully."
  else
    echo "File $sql_file not found."
  fi
}

run_sql_file "$FIRST_FILE"
run_sql_file "$SECOND_FILE"
run_sql_file "$THIRD_FILE"

echo "All SQL scripts executed."
