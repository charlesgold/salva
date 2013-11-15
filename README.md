salva.bat
==========
v1.0 - Charlie Topjian
Batch file to help with "basic" backup of specifed database from MySQL

Currently the mySqlDumb file specified is the location xampp stores on default
installation. In order to customize for your needs, be sure to locate your
 "mysqldump" directory location and changed accordingly.

*Example cmd line: salva.bat root pass my_db c:\bkup mybkup


I needed a quick way to backup customer databases in WAMP setting.
Use windows task scheduler to run the .bat file at the schedule you wish.
I actually use Google Drive and backup the database there, so it is offsite too!
