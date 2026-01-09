# Deploy
kubectl apply -f vllm/cpu_deployment.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f vllm/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
