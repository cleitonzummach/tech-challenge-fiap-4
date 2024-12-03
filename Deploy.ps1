kubectl apply -f ./Fiap.Infra/Kustomization/kube-state-metrics.yaml
kubectl apply -f ./Fiap.Infra/ClusterRole/kube-state-metrics.yaml
kubectl apply -f ./Fiap.Infra/ClusterRoleBinding/kube-state-metrics.yaml
kubectl apply -f ./Fiap.Infra/ServiceAccount/kube-state-metrics.yaml
kubectl apply -f ./Fiap.Infra/ServiceAccount/nodeexporter.yaml
kubectl apply -f ./Fiap.Infra/Deployments/kube-state-metrics.yaml
kubectl apply -f ./Fiap.Infra/Services/kube-state-metrics.yaml

kubectl apply -f ./Fiap.Infra/Namespace/namespace.yaml

kubectl apply -f ./Fiap.Infra/Secrets/secrets.yaml

kubectl apply -f ./Fiap.Infra/ClusterRole/prometheus.yaml
kubectl apply -f ./Fiap.Infra/ClusterRole/nodeexporter.yaml

kubectl apply -f ./Fiap.Infra/ClusterRoleBinding/nodeexporter.yaml

kubectl apply -f ./Fiap.Infra/ConfigMaps/configmaps.yaml
kubectl apply -f ./Fiap.Infra/ConfigMaps/otel.yaml
kubectl apply -f ./Fiap.Infra/ConfigMaps/prometheus.yaml
kubectl apply -f ./Fiap.Infra/ConfigMaps/grafana.yaml

kubectl apply -f ./Fiap.Infra/PersistentVolumes/persistentvolumes.yaml
kubectl apply -f ./Fiap.Infra/PersistentVolumes/grafana.yaml

kubectl apply -f ./Fiap.Infra/Deployments/infra.yaml
kubectl apply -f ./Fiap.Infra/Deployments/api.yaml
kubectl apply -f ./Fiap.Infra/Deployments/consumer.yaml
kubectl apply -f ./Fiap.Infra/Deployments/otel.yaml
kubectl apply -f ./Fiap.Infra/Deployments/nodeexporter.yaml
kubectl apply -f ./Fiap.Infra/Deployments/prometheus.yaml
kubectl apply -f ./Fiap.Infra/Deployments/grafana.yaml

kubectl apply -f ./Fiap.Infra/Services/infra.yaml
kubectl apply -f ./Fiap.Infra/Services/api.yaml
kubectl apply -f ./Fiap.Infra/Services/otel.yaml
kubectl apply -f ./Fiap.Infra/Services/nodeexporter.yaml
kubectl apply -f ./Fiap.Infra/Services/prometheus.yaml
kubectl apply -f ./Fiap.Infra/Services/grafana.yaml

kubectl apply -f ./Fiap.Infra/HPA/hpa.yaml