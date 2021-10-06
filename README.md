# The latenight dessert: Cookie Jar

- Cookie_1: Create a script that copies the contents of the log file /var/log/messages to /var/log/messages.old and deletes the contents  of the /var/log/messages file.

- Cookie_2: Write a script named “totmp”. The script should copy all files from the names provided as arguments on the command line to the users home directory. If no files have been provided , the script should use read to ask for the file names and copy all the file names to provide in the answer to the user’s home directory.

- Cookie_3: Create a script that puts the result of the command : “date +%d-%m-%y” in variable. Use pattern matching on the variable to show 3 lines, displaying date, month and year in separated line as follows:
The day is 17
The month is 12
The year is 17

- Cookie_4: Conjure a script that transforms the string : cn=bruce,dc=vaiolabs,dc=com in a way that the user name is extracted from the string. Also make sure that the result is written in a lowercase. Store the username in the variable NAME and at the end of the script, echo the value of this variable.

- Cookie_5: Create a file called ldapuser and write in it next lines:
cn=bruce,dc=vaiolabs,dc=com
cn=wally,dc=vaiolabs,dc=com
cn=diana,dc=vaiolabs,dc=com
cn=john,dc=vaiolabs,dc=com
cn=zetana,dc=vaiolabs,dc=com
cn=clark,dc=vaiolabs,dc=com
The file simulates the extracted usernames of users from AD/LDAP. Write a script that extracts the username only from all the line and writes them into new file. Based on the new file, create new users on linux machine you are working on.

Note: never test the script on live machine, find a way to run the script that shows that all works without adding the users. After that add users.

- Cookie_6: Create a user helpdesk. Write a script that is started automatically when that user logs in. The menu script should never be terminated, unless the user logs out. 
From this menu: make following options available: (1)reset password, (2) show disk usage, (3) ping a host, (4)log out. You are welcome to add more options if you have them in mind.
Bonus cookie: modify the script and related configuration so that the user can be sudo to set passwords for the other users as well.

(Exercise by @silent-mobius)
