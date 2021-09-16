# INSTALL DOCKER ENGINE

### Install docker engine,docker-compose :
```
git clone https://github.com/andromeda9096/dockerubuntu.git && cd ./dockerubuntu && chmod +x ./install_docker.sh && ./install_docker.sh -y
```

### Install New Portainer :
```
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
```

#### Portainer repo: Setting => App Template
- Default
```
https://raw.githubusercontent.com/portainer/templates/master/templates-2.0.json
```

- Extra
```
https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json
```

#### Upgrade portainer
```
docker stop portainer  && docker rm portainer && docker rmi portainer/portainer-ce \
&& docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
```
