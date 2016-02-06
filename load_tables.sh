BASE_PATH="/Users/ryanzotti/Dropbox/Tafti-ZottiResearch/DatabaseBackups/Dump20130310"
MYSQL_PATH="/usr/local/mysql/bin"
MYSQL_USER="root"
MYSQL_DATABASE="screenscraping"
MYSQL_HOST="localhost"
for FILE in `ls ${BASE_PATH}`
do
 ${MYSQL_PATH}/mysql -u $MYSQL_USER $MYSQL_DATABASE -h $MYSQL_HOST <${BASE_PATH}/${FILE}
done
