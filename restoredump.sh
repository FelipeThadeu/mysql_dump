for DB in $(ls -l | awk '{print $9}' | grep dump$ | cut -d\. -f 1 | grep -v mysql | grep -v performance_schema | grep -v information_schema)
do
      echo "$(date) - EXECUTANDO ${DB}"
      mysql -u <user> -p<senha> -h <host> -e "CREATE DATABASE ${DB}"
      #cat ${DB}.dump | mysql -u<user> -p<senha> -h <host>
      mysql -u<user> -p<senha> ${DB} -h<endpoint_rds> < ${DB}.dump
done