First run the script db-container-script, the docker will create lyit_nw network so that other containers can also interconnected using same network. 

The script is created for windows container and base image microsoft/mssql-server-windows-developer will be downloaded from dockerhub and will create a container called lyit-container-collegedb inside host machine.

User can use localhost, 2500 in host machine sql server management system to connect database container with SA account and password as lyit_pgdip

After that user can run db-script file to create tables inside db container