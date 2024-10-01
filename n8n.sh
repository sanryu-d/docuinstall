#Aggiornare n8n
docker image rm -f n8nio/n8n:latest
docker compose pull
docker compose down
docker compose up -d



#vedo i dettagli 
docker inspect $ID


docker run -it --rm -p 8888:8443 apache:3.2

#vedere i log del container
dokcer logs $id


docker run --detach --name mariadb --env MARIADB_USER=Sanryu --env MARIADB_PASSWORD="Netsons.78" --env MARIADB_ROOT_PASSWORD="Netsons.78"  mariadb:latesta 