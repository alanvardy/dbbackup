# dbbackup
Shell script that automagically backs up Postgres databases on Dokku and Heroku and uploads to Google Drive

gdrive file is sourced from https://github.com/prasmussen/gdrive

Script is inspired by https://gist.github.com/henrik/5ebff4ba7d18df85144520e20210a178

Use these files at your own risk.

## Instructions:

Download and make executable

```bash
git clone git@github.com:alanvardy/dbbackup.git
cd dbbackup
chmod +x dbbackup.sh
```

Edit your settings file

```bash
gedit settings.conf
```

Run that script

```bash
./dbbackup.sh
```

You will be asked to authorize gdrive to access your Google Drive the first time you run it.

## Licence

This work is licensed under the MIT License. See LICENSE.md for more details.
