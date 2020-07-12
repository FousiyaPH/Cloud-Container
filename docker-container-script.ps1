# A Power Shell Script To create database, webserver, mail server, file server containers
# Fousiya Padinjarepeedikayil Hameed - 12/Aug/2020

#first user create a network so that different containers can use this network to interconnect
docker network create lyit_nw
echo "Network created"

echo "creating database container"
docker run --network=lyit_nw  -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=lyit_pgdip" -p 2500:1433 --name lyit-container-collegedb -d microsoft/mssql-server-windows-developer
echo "database container lyit-container-collegedb finished"
echo "user can use localhost, 2500 in host machine to connect database container with SA account and password as lyit_pgdip"

echo "creating web server container"
docker run --network=lyit_nw --name lyit-container-webserver --rm -it -p 8080:80 -d microsoft/iis:nanoserver
echo "web server container created and now available in localhost:8080 port or user can user container ipaddress directly"


