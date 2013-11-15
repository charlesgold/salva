@echo off
:: v1.0 - Charlie Topjian
::Batch file to help with "basic" backup of specifed database from MySQL
::
::Currently the mySqlDumb file specified is the location xampp stores on default
::installation. In order to customize for your needs, be sure to locate your
:: "mysqldump" directory location and changed accordingly.
::
::Example cmd line: salva.bat root pass my_db c:\bkup mybkup
::
::
::I needed a quick way to backup customer databases in WAMP setting.
::Use windows task scheduler to run the .bat file at the schedule you wish.
::I actually use Google Drive and backup the database there, so it is offsite too!
::
::

set dbUser=%1
set dbPass=%2
set dbName=%3
:: directory you wish to send backup.
set backupDir=%4
set mySqlDumb=c:\xampp\mysql\bin\mysqldump
:: Use a description of backup up here.
set filePrefix=%5
set fileSuffix=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%_%TIME:~3,2%_%TIME:~6,2%
set fileExt=.sql
set DL=_

::actual commands executed
%mySqlDumb% -u%dbUser% -p%dbPass% --result-file=%backupDir%\%filePrefix%%DL%%fileSuffix%%fileExt% %dbName%