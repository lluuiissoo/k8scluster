# Kudos to https://www.youtube.com/watch?v=UWg3ORRRF60&list=LL6Xw7-4WmPUNltIeoeMiyWQ&index=7

# Update repositories
#sudo su
apt-get update

# Turn off Swap space
#swapoff -a
#nano /etc/fstab #Comment line containing swap, if it exists

# Update hostname
echo "Enter hostname:"
read hostName
echo hostName > /etc/hostname
