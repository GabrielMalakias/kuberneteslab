# Ingress Controller

## Testing

```
curl $(minikube ip)
curl $(minikube ip) -H 'Host: rubyapp.kubernetes.gabrielmalakias.com'
curl $(minikube ip) -H 'Host: elixirapp.kubernetes.gabrielmalakias.com'
```
