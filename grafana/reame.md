
# 1. Setup
kubectl create namespace my-grafana
kubectl get namespace my-grafana
touch grafana.yaml

# 2. Do deployment
kubectl apply -f grafana.yaml --namespace=my-grafana

# 3. verify deployment
kubectl get pvc --namespace=my-grafana -o wide
kubectl get deployments --namespace=my-grafana -o wide
kubectl get svc --namespace=my-grafana -o wide
kubectl get all --namespace=my-grafana
