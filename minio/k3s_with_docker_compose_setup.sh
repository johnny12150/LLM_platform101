## Reference: https://dev.to/giveitatry/how-to-install-minio-in-kubernetes-in-15-min-47h9

# Install the MinIO Operator
MINIO_OPERATOR_VERSION="v5.0.18"
kubectl apply -k "github.com/minio/operator/resources?ref=${MINIO_OPERATOR_VERSION}" \
      --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml

# Waiting for MinIO Operator to be ready
kubectl wait --for=condition=available --timeout=300s deployment/minio-operator -n minio-operator \
      --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml

# Create namespace and deploy
kubectl create namespace llm-platform --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f minio/root_secret.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl create secret generic llm-minio-user \
        -n llm-platform \
        --from-literal=CONSOLE_ACCESS_KEY=user1 \
        --from-literal=CONSOLE_SECRET_KEY=password123 \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f minio/tenant.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
kubectl apply -f minio/service.yaml \
        --kubeconfig docker/k3s_with_docker_compose/output/kubeconfig.yaml
