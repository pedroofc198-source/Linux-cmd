#####################################################################
#                        INSTALANDO O DOCKER                        #
#####################################################################

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

#instalando docker
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add docker in admin user
sudo usermod -aG docker $(whoami)

#####################################################################
#                             COMANDOS                              #
#####################################################################

#listar imagens rodando(necessário reiniciar se for nativo, ou no wsl fechar e abrir novamente ou usar sudo)
docker ps

## listar redes ####
docker network ls


