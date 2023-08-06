
## Setup Kubernetes Dashboard
```code
microk8s.enable dashboard
microk8s dashboard-proxy
```

kubectl apply -f dashboard-adminuser.yaml 
kubectl apply -f dashboard-ingress.yaml

kubectl get secret admin-paul -n kubernetes-dashboard -o jsonpath={".data.token"} | base64 -d

kubectl -n kubernetes-dashboard create token admin-paul

# Get the Config
microk8s config 

sudo nano /etc/hosts
```
127.0.0.1 localhost
192.168.1.119 k8-cp-00
192.168.1.119 k8-cp-00.local
192.168.1.137 k8-wn-00
192.168.1.137 k8-wn-00.local
192.168.1.103 k8-wn-01
192.168.1.103 k8-wn-01.local
```