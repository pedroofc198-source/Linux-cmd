#####################################################################
#                        INSTALANDO O KIND                          #
#####################################################################

# For AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-amd64
# For ARM64
[ $(uname -m) = aarch64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.31.0/kind-linux-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

#baixar o kind deretamente para x86-amd64
# Only AMD64 / x86_64
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/

#####################################################################
#                        CRIANDO CLUSTERS                           #
#####################################################################

# CRIAR CLUSTERS KIND DEFAULT
kind create cluster -n dev
kind create cluster -n hml
kind create cluster -n prd
kind create cluster -n mgmt

# criar clusters com configuração personalizada
kind create cluster --config kind-multinode-dev.yaml
kind create cluster --config kind-multinode-hml.yaml
kind create cluster --config kind-multinode-prd.yaml
kind create cluster --config kind-multinode-mgmt.yaml


#ACESSAR KUBECONFIG DO CLUSTER
kind get kubeconfig -n mgmt


# REMOVENDO CHAVES DE SEGURANÇA DO CLUSTER COM KUBECTL PARA LIVRE ACESSO
kubectl config set-cluster <cluster-name> --insecure-skip-tls-verify=true
