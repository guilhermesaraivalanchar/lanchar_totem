#!/bin/sh
SERVICE='update_all.rb'
cd /home/code/lanchar_totem

while :
do
  if ps ax | grep -v grep | grep $SERVICE > /dev/null
  then
    echo "$SERVICE service running, everything is fine"
  else
    echo "$SERVICE is not running" | rm log/update_all.rb.pid
    echo "$SERVICE is not running!" | RAILS_ENV=production bundle exec lib/daemons/update_all_ctl start
  fi
  sleep 5
done

