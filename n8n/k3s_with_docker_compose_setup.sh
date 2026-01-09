# Deploy
kubectl apply -f n8n/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f n8n/own_mode_deployment.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
