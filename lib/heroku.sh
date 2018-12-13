#!/bin/bash
# For downloading Heroku Databases via PG:Backup
source ../settings.conf

list=$(heroku apps)
heroku_apps=( "${list[@]:1}" )

DATE=`date +%Y-%m-%d`
for i in $heroku_apps
do
   heroku pg:backups:capture --app ${i}
   url=$(heroku pg:backups:url --app ${i})
   wget -O $DATE-${i}-Heroku $url
done