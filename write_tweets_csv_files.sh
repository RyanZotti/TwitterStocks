MYSQL_PATH="/usr/local/mysql/bin"
MYSQL_USER="root"
MYSQL_DATABASE="screenscraping"
MYSQL_HOST="localhost"
TARGET_DIR="/TwitterData/2013_bkp/tweets"
TABLES=`/usr/local/mysql/bin/mysql -u root screenscraping -h localhost -s -e "select * from (SELECT table_name FROM information_schema.tables WHERE table_schema = DATABASE()) as tbl where table_name like 'tweets%'"`
for TABLE in $TABLES; do
  ${MYSQL_PATH}/mysql -u ${MYSQL_USER} ${MYSQL_DATABASE} -h ${MYSQL_HOST} -e "select * from $TABLE INTO OUTFILE '${TARGET_DIR}/${TABLE}.csv' FIELDS TERMINATED BY ',' ENCLOSED BY '\"'LINES TERMINATED BY '\n';"
done
