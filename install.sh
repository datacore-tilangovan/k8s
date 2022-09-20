#!/bin/bash
apt-get update -y 
apt purge kubeadm kubelet kubectl -y
apt remove kubeadm kubelet kubectl -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt-get install kubeadm=1.23.0-00 kubelet=1.23.0-00 kubectl=1.23.0-00 -y
sudo apt-mark hold kubeadm kubelet kubectl
