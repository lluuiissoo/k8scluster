# Install the Kubernetes packages for Ubuntu
#https://opensource.com/article/20/6/kubernetes-raspberry-pi

#Add the Kubernetes repo to Ubuntu's sources:

# Add the packages.cloud.google.com atp key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Add the Kubernetes repo
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF