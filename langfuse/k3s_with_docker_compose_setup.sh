helm repo add langfuse https://langfuse.github.io/langfuse-k8s
helm repo update

# Deploy
helm install langfuse langfuse/langfuse \
        --namespace llm-platform \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml \
        -f yml/langfuse/values.yaml
kubectl apply -f yml/langfuse/svc.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml

## Upgrade
#helm upgrade langfuse langfuse/langfuse \
#        --namespace llm-platform \
#        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml \
#        -f yml/langfuse/values.yaml

## Uninstall
#helm uninstall langfuse \
#        --namespace llm-platform \
#        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
