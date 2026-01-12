```bash
helm repo add mahin-repo https://mahin556.github.io/Helm-charts/

helm repo list

helm install demo mahin-repo/go-portfolio-app

helm install tetris mahin-repo/tetris-game

helm install demo mahin-repo/cymbal_ecommerce

helm install demo mahin-repo/cymbal_ecommerce --version=0.1.3

kubectl patch svc demo-frontend-external-service -n demo-cymbal-development -p '{"spec": {"type": "NodePort"}}'
```
