# Install docker and docker-compose on ubuntu
### Install docker engine,docker-compose :
```
git clone https://github.com/andromeda9096/dockerubuntu.git && cd ./dockerubuntu && chmod +x ./install_docker.sh && ./install_docker.sh -y
```

### Install portainer :
```
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
```
