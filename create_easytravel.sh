#!/bin/sh
kubectl create namespace easytravel
kubectl apply -f manifests/easytravel-mongodb-secret.yaml
kubectl apply -f manifests/easytravel-mongodb.yaml
sleep 5

kubectl apply -f manifests/easytravel-backend.yaml
kubectl apply -f manifests/easytravel-frontend.yaml
kubectl apply -f manifests/easytravel-nginx.yaml
sleep 30

kubectl apply -f manifests/easytravel-loadgen.yaml
