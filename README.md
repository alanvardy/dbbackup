# dbbackup
Shell scripts for automagically backing up Postgres databases on Dokku and Heroku and uploading to Google Drive

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
