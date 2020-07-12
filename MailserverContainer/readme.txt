User can create mail server container with help of Mailu, a docker based mail server.

The user can select a personal folder to store persistent data. Mailu mail server gives users a docker compose file which will contain necessary steps for downloading packages for mal server. Also, Mailu mail server gives users a web page where user can add mail domain, website name. 

User can create custom configuration using following link
https://mailu.io/1.7/compose/setup.html 

Mailu website will give user the necessary steps for creating mail server in host machine. For research purpose, lyit.pgdip.ie mail domain name was used and lyitpgdip website name used.

For research purpose,  a sample configuration is already created. Two files will be created and first one is docker-compose.yml file which can be found in http://setup.mailu.io/1.7/file/00a76945-7fae-4799-a2a1-d6d9cbe16f54/docker-compose.yml. The second file is mailu.env file which can be downloaded from http://setup.mailu.io/1.7/file/00a76945-7fae-4799-a2a1-d6d9cbe16f54/mailu.env.

Then user must open PowerShell in windows 10(if user is using windows 10 host machine) with Admin privileges and then point folder location to C:\mailu. 

User can now run mailserver-container-script file inside powershell.

Now user can open http://127.0.0.1:8080/ui/login?next=ui.index which is listening mail server and provides a user interface to view mail server operations.


user name is admin@lyit.pgdip.ie with password pass@123 
