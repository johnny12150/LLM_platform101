# Deploy
kubectl apply -f yml/n8n/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f yml/n8n/demo_workflow_config.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f yml/n8n/secret.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f yml/n8n/own_mode_deployment.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
