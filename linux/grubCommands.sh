
sudo fdisk -l 

# sda7 stands for the main linux partition
sudo mount -t ext4 /dev/sda7 /mnt
sudo mount --bind /dev /mnt/dev
sudo mount --bind /dev/pts /mnt/dev/pts
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys

sudo chroot /mnt

grub-mkconfig -o /boot/grub/grub.cfg

# How to fix this “minimal BASH like line editing is supported” Grub error in Ubuntu based Linux
# https://itsfoss.com/fix-minimal-bash-line-editing-supported-grub-error-linux/

sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt-get update
sudo apt-get install boot-repair

boot-repair &
