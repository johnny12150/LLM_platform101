# Deploy
kubectl apply -f yml/vllm/cpu_deployment.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f yml/vllm/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
