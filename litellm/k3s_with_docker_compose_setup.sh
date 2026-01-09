# Deploy
kubectl apply -f yml/litellm/deployment.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f yml/litellm/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
