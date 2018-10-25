
sudo fdisk -l 

# sda7 stands for the main linux partition
sudo mount -t ext4 /dev/sda7 /mnt
sudo mount --bind /dev /mnt/dev
sudo mount --bind /dev/pts /mnt/dev/pts
sudo mount --bind /proc /mnt/proc
sudo mount --bind /sys /mnt/sys

sudo chroot /mnt

grub-mkconfig -o /boot/grub/grub.cfg

