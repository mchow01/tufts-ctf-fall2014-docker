#!/bin/bash
#mysql has to be started this way as it doesn't work to call from /etc/init.d
/usr/bin/mysqld_safe & 
sleep 10s 
mysql < /database/scoreboard-final.sql
mysql < /database/initial_data.sql
mysqladmin -u root password "Wh@t3ver!Wh@t3ver!" 
killall mysqld
sleep 10s
supervisord -n
