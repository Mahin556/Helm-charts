```bash
helm repo add mahin-repo https://mahin556.github.io/Helm-charts/

helm repo list

helm install demo mahin-repo/go-portfolio-app

helm install tetris mahin-repo/tetris-game

helm install demo mahin-repo/cymbal_ecommerce

kubectl create ns cymbal-ecommerce-ns

helm install demo mahin-repo/cymbal_ecommerce --version=0.1.9 -n cymbal-ecommerce-ns

helm list -n cymbal-ecommerce-ns

kubectl patch svc demo-frontend-external-service -n cymbal-ecommerce-ns -p '{"spec": {"type": "NodePort"}}'

kubectl get pods -n cymbal-ecommerce-ns

kubectl get svc -n cymbal-ecommerce-ns

helm search repo mahin-repo/cymbal_ecommerce --versions

helm show values mahin-repo/cymbal_ecommerce --version 1.1.4

helm show chart mahin-repo/cymbal_ecommerce --version 1.1.4

helm show readme mahin-repo/cymbal_ecommerce --version 1.1.4

helm show all mahin-repo/cymbal_ecommerce --version 1.1.4


```
