# Triggering autoscaling

```
kubectl run -i --tty loadgenerator --image=busybox --restart=Never -- sh

while true; do wget -q -O- http://hpa-deployment.default.svc.cluster.local:8
> 0; done
```

# Checking resources

```
watch kubectl get hpa
watch kubectl get pods

```
