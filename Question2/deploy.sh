#!/bin/sh

# Create deployment
kubectl create deployment nginx --image=nginx

# Expose
kubectl create service nodeport nginx --tcp=80:80
