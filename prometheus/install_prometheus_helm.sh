#! /bin/bash
set -e

kubectl apply -f prometheus/namespace.yaml

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus \
  --namespace monitoring

kubectl apply -f prometheus/prometheus-config.yaml -n monitoring --force
