#! /bin/bash
set -e

kubectl apply -f grafana/namespace.yaml

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana grafana/grafana \
  --namespace grafana
