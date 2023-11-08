**Create Cluster:**
kind create cluster --config=assignment2/initial_congfig.yml
docker build -t themaier/web-app .
kind load docker-image themaier/web-app
kubectl apply -f assignment2/deployment.yml
kubectl apply -f assignment2/service.yml
kubectl apply -f assignment2/hpa.yml

**Access Cluster:**
kubectl get svc devops-web-app-service
kubectl port-forward service/devops-web-app-service 8080:3000
http://localhost:8080/


![Alt text](web-app-on-local-host-kind)


**Kubernetes Dashboard:**
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml