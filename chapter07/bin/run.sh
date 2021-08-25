# IMPORTANT: switch context before starting!!!
kubectl config use-context minikube

# Create deployment
kubectl create deployment alpaca-prod \
  --image=gcr.io/kuar-demo/kuard-amd64:blue \
  --replicas=3 \
  --port=8080

# Add labels (to the deployment!)
kubectl label deployment alpaca-prod ver=1
kubectl label deployment alpaca-prod app=alpaca
kubectl label deployment alpaca-prod env=prod

# Expose deployment as service
kubectl expose deployment alpaca-prod

kubectl create deployment bandicoot-prod \
  --image=gcr.io/kuar-demo/kuard-amd64:green \
  --replicas=2 \
  --port=8080
kubectl label deployment bandicoot-prod ver=2
kubectl label deployment bandicoot-prod app=bandicoot
kubectl label deployment bandicoot-prod env=prod
kubectl expose deployment bandicoot-prod

kubectl get services -o wide