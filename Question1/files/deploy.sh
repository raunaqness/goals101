#!/bin/sh

# Create Namespace
kubectl create ns jenkins

# Create Storage Class
kubectl create -f jenkins-storage-class.yaml

# Create PVC
kubectl create -f jenkins-pvc.yaml

# Create deployment
kubectl create -f jenkins-deployment.yaml --namespace=jenkins

# Create Jenkins Service
kubectl create -f jenkins-service.yaml --namespace=jenkins
