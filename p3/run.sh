echo "create cluster ..."
sleep 4

sh scripts/setup-k3d-with-argocd.sh

echo "apply deployment ..."
sleep 4

kubectl apply -f confs/deployment.yaml

kubectl apply -f confs/argo.yaml
kubectl apply -f confs/service.yaml
kubectl apply -f confs/argocd-service.yaml