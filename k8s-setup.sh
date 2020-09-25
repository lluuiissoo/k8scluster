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
echo $hostName > /etc/hostname

# Set static IP address
# https://linuxize.com/post/how-to-configure-static-ip-address-on-ubuntu-18-04/#:~:text=Configuring%20Static%20IP%20address%20on%20Ubuntu%20Desktop,-Setting%20up%20a&text=Click%20on%20the%20cog%20icon,on%20the%20%E2%80%9CApply%E2%80%9D%20button.

