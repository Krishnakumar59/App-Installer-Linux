## Minikube installation script
For more info [visit] : ( https://minikube.sigs.k8s.io/docs/start/ )

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start
kubectl get po -A
alias kubectl="minikube kubectl --"
minikube dashboard
