# Install the Kubernetes packages for Ubuntu
#https://opensource.com/article/20/6/kubernetes-raspberry-pi

#Add the Kubernetes repo to Ubuntu's sources:

# Add the packages.cloud.google.com atp key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Add the Kubernetes repo
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

# Update the apt cache and install kubelet, kubeadm, and kubectl
# (Output omitted)
sudo apt update && sudo apt install -y kubelet kubeadm kubectl

# Disable (mark as held) updates for the Kubernetes packages
sudo apt-mark hold kubelet kubeadm kubectl
#kubelet set on hold.
#kubeadm set on hold.
#kubectl set on hold.
