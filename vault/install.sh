kubectl apply -f 01_vault_namespace.yaml 

helm install vault hashicorp/vault --namespace vault --version 0.28.0
