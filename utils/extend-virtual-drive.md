# Extend Virtualbox Disk
Reference
https://www.howtogeek.com/124622/how-to-enlarge-a-virtual-machines-disk-in-virtualbox-or-vmware/


# Extend Logical LLVM

cat /proc/partitions
sudo resize2fs /dev/ubuntu-base-vg/root
sudo vgextend ubuntu-base-vg /dev/sda5
sudo pvidsplay
sudo pvdisplay
sudo lvextend -l +100%FREE /dev/ubuntu-base-vg/root
cat /proc/partitions
df -h
sudo resize2fs /dev/ubuntu-base-vg/root

Reference
https://www.hiroom2.com/2016/05/19/ubuntu-16-04-extend-and-reduce-lvm-root-filesystem/
