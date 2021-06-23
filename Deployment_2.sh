#!/bin/bash
kubectl create -f PersistentVolume.yaml
kubectl create -f storage.yaml
kubectl apply -f mysql2.yaml
kubectl apply -f node.yaml
kubectl get pods
