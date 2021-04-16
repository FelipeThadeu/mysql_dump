for DB in $(mysql -u <user> -p<senha> -h <host> -e "SHOW DATABASES")
do
   mysqldump mysql -u <user> -p<senha> -h <host> ${DB} > /tmp/dump/${DB}.dump
done