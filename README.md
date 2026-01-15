```bash
helm repo add mahin-repo https://mahin556.github.io/Helm-charts/

helm repo list

helm install demo mahin-repo/go-portfolio-app

helm install tetris mahin-repo/tetris-game

helm install demo mahin-repo/cymbal_ecommerce

kubectl create ns cymbal-ecommerce-ns

helm install demo mahin-repo/cymbal_ecommerce --version=0.1.6 -n cymbal-ecommerce-ns

helm list -n cymbal-ecommerce-ns

kubectl patch svc demo-frontend-external-service -n cymbal-ecommerce-ns -p '{"spec": {"type": "NodePort"}}'
```
