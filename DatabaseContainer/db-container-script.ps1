# A Power Shell Script To create database container
# Fousiya Padinjarepeedikayil Hameed - 12/Aug/2020

#first user create a network so that different containers can use this network to interconnect
docker network create lyit_nw
echo "Network created"

echo "creating database container"
docker run --network=lyit_nw  -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=lyit_pgdip" -p 2500:1433 --name lyit-container-collegedb -d microsoft/mssql-server-windows-developer
echo "database container lyit-container-collegedb finished"
echo "user can use localhost, 2500 in host machine to connect database container with SA account and password as lyit_pgdip"
