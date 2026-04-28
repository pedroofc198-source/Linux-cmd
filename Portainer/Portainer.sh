# Criar volume onde ficarão os dados do Portainer
docker volume create portainer_data

# Baixar e instalar Portainer
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:sts

# Acessar via navegador e criar usuário e senha para acessar o Portainer
https://localhost:9443

