mkdir ~/argocd


openssl req -newkey rsa:2048 -new -nodes -x509 -days 3650 -keyout ~/argocd/key.pem -out ~/argocd/cert.pem \
    -subj "/C=AU/ST=ArgoCD/L=Canberra/O=.../OU=.../CN=.../emailAddress=paul.mckee.aus@gmail.com"

kubectl apply -f argocd_ns.yaml
kubectl apply -n argocd -f install.yaml 

kubectl create -n argocd secret tls argocd-server-tls --cert=`~/argocd/cert.pem`  --key=`~/argocd/key.pem`

kubectl create -n argocd secret tls argocd-server-tls \
  --cert=~/argocd/cert.pem \
  --key=~/argocd/key.pem

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d



kubectl port-forward svc/argocd-server -n argocd 8080:443