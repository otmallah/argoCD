# install k3d in machine
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
# create k3s cluster with k3d
k3d cluster create argocd-cluster
# create two namespaces one for  app and the second for argocd
kubectl create ns argocd
kubectl create ns dev
# install argocd inside namespace argocd
kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml -n argocd
