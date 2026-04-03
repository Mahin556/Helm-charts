```bash
k apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.20.0/cert-manager.yaml

k apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.36.1/controller.yaml

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx \
  --namespace ingress-nginx \
  --create-namespace

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/high-availability-1.21+.yaml

kubectl -n kube-system patch deployment metrics-server \
  --type='json' \
  -p='[{"op":"add","path":"/spec/template/spec/containers/0/args/-","value":"--kubelet-insecure-tls"}]'
```

```bash
echo -n 'DevPassword123!' | kubeseal \
  --controller-name=sealed-secrets \
  --controller-namespace=kube-system \
  --scope=cluster-wide \
  --raw \
  --from-file=/dev/stdin

echo -n 'DevRootPassword123!' | kubeseal \
  --controller-name=sealed-secrets \
  --controller-namespace=kube-system \
  --scope=cluster-wide \
  --raw \
  --from-file=/dev/stdin

echo -n 'DevSessionKey1234567890' | kubeseal \
  --controller-name=sealed-secrets \
  --controller-namespace=kube-system \
  --scope=cluster-wide \
  --raw \
  --from-file=/dev/stdin
```

```bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout tls.key -out tls.crt \
-subj "/CN=mahinraza.online" \
-addext "subjectAltName=DNS:mahinraza.online,DNS:gowebapp.mahinraza.online"

openssl x509 -in tls.crt -text -noout

# kubectl create secret tls gowebapp-tls \
#   --cert=tls.crt \
#   --key=tls.key \
#   --dry-run=client \
#   -oyaml \
#   -n default > secret.yaml

# kubeseal --controller-name=sealed-secrets \
#   --controller-namespace=kube-system \
#   --scope=cluster-wide \
#   -f secret.yaml -w sealed-secret.yaml 

kubeseal \
  --controller-name=sealed-secrets \
  --controller-namespace=kube-system \
  --scope=cluster-wide \
  --raw \
  < tls.crt

kubeseal \
  --controller-name=sealed-secrets \
  --controller-namespace=kube-system \
  --scope=cluster-wide \
  --raw \
  < tls.key
```