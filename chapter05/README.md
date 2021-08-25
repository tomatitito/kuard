# Pods

The `metadata` section is for describing pod and labels, the `spec` section for describing volumes. The `containers`section lists the containers of the pod.

Launch a single instance of a pod with a given manifest file:

```kubectl apply -f kuard-pod.yaml```

Access a pod on http://localhost:48858:

```kubectl port-forward kuard 48858:8080```

View logs (the `-f` option will continuously stream logs):

```kubectl logs kuard -f```
