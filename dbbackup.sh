#!/bin/bash
# Backs up Postgres databases on Dokku and Heroku
# Runs the 3 scripts. gdrive is the linux_x64 version from https://github.com/prasmussen/gdrive

source settings.conf

# Mark files as executable
chmod +x lib/heroku.sh lib/dokku.sh lib/gdrive

#initialize Google Drive
lib/gdrive about

#Make folder
DATE=`date +%Y-%m-%d`
mkdir -p "${DATE}"
cd $DATE

# Run backup scripts
../lib/heroku.sh
../lib/dokku.sh

#gzip files
tar czvf ${DATE}.tar.gz *

# Upload to Google Drive
../lib/gdrive upload --parent $google_folder ${DATE}.tar.gz

# Delete backups folder from drive
cd ..
rm -rf $DATE
