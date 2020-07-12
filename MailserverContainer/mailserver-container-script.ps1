# A Power Shell Script To create mail server container
# Fousiya Padinjarepeedikayil Hameed - 12/Aug/2020

echo "creating mail server container"
docker-compose -p mailu up -d
echo "mail server created and now available in http://127.0.0.1:8080/ui/login?next=ui.index `
	  with username as admin@lyit.pgdip.ie and password as pass@123"  


