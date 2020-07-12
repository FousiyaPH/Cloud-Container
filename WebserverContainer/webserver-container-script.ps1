# A Power Shell Script To create webserver ontainer
# Fousiya Padinjarepeedikayil Hameed - 12/Aug/2020

echo "creating web server container"
docker run --network=lyit_nw --name lyit-container-webserver --rm -it -p 8080:80 -d microsoft/iis:nanoserver
echo "web server container created and now available in localhost:8080 port or user can user container ipaddress directly"


