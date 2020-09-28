# https://opensource.com/article/20/6/kubernetes-raspberry-pi

# Check `docker info`
# Some output omitted
# > sudo docker info
# (...)
#  Cgroup Driver: cgroups
# (...)
# WARNING: No memory limit support
# WARNING: No swap limit support
# WARNING: No kernel memory limit support
# WARNING: No kernel memory TCP limit support
# WARNING: No oom kill disable support

# The output above highlights the bits that need to be changed: the cgroup driver and limit support.

# Create or replace the contents of /etc/docker/daemon.json to enable the systemd cgroup driver

$ sudo cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

# Enable cgroups limit support
# Append the cgroups and swap options to the kernel command line
# Note the space before "cgroup_enable=cpuset", to add a space after the last existing item on the line
$ sudo sed -i '$ s/$/ cgroup_enable=cpuset cgroup_enable=memory cgroup_memory=1 swapaccount=1/' /boot/firmware/cmdline.txt
