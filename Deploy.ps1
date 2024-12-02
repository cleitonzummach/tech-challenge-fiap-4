kubectl apply -f ./Fiap.Infra/Namespace/namespace.yaml

kubectl apply -f ./Fiap.Infra/Secrets/secrets.yaml

kubectl apply -f ./Fiap.Infra/ConfigMaps/configmaps.yaml
kubectl apply -f ./Fiap.Infra/ConfigMaps/prometheus.yaml
kubectl apply -f ./Fiap.Infra/ConfigMaps/grafana.yaml

kubectl apply -f ./Fiap.Infra/PersistentVolumes/persistentvolumes.yaml

kubectl apply -f ./Fiap.Infra/Deployments/infra.yaml
kubectl apply -f ./Fiap.Infra/Deployments/api.yaml
kubectl apply -f ./Fiap.Infra/Deployments/consumer.yaml
kubectl apply -f ./Fiap.Infra/Deployments/prometheus.yaml
kubectl apply -f ./Fiap.Infra/Deployments/grafana.yaml

kubectl apply -f ./Fiap.Infra/Services/infra.yaml
kubectl apply -f ./Fiap.Infra/Services/api.yaml
kubectl apply -f ./Fiap.Infra/Services/prometheus.yaml
kubectl apply -f ./Fiap.Infra/Services/grafana.yaml

kubectl apply -f ./Fiap.Infra/HPA/hpa.yaml