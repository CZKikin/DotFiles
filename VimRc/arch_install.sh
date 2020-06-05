#!/bin/sh

#This is my script for installing arch linux, because I'm lazy 

echo "Efi test"
[ -d "/sys/firmware/efi/efivars" ] && echo "This computer supports EFI" && efi_supp=1
sleep 1

echo "Ping test"
[ "$(ping -c 1 google.com)" ] || { echo "No internet connection, fix the problem and run again." ; exit 1; }

timedatectl set-ntp true

cfdisk

echo "enter main partition as /dev/sdax or /dev/nvmexxx..."
read main
echo "enter swap"
read swap
[ $efi_supp -eq 1 ] && echo "enter efi partition" && read efi_partititon

mkfs.ext4 $main
makeswap $swap
swapon $swap

mount $main /mnt

pacstrap /mnt base linux linux-firmware

gen fgstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt ln -sf /usr/share/zoneinfo/Europe/Prague /etc/localtime
arch-chroot /mnt hwclock --systohc
arch-chroot /mnt locale-gen
arch-chroot /mnt pacman -S vim sudo grub dhcpcd

echo "Enter hostname"
read hostname
arch-chroot /mnt echo $hostname >> /etc/hostname
arch-chroot /mnt echo "127.0.0.1 localhost" >> /etc/hosts  

echo "Enter root passwd"
arch-chroot /mnt passwd 

echo "enter where to execute grub-install"
read grub_disk

[ $efi_supp -eq 1 ] && arch-chroot grub-install --target=x86_64-efi --efi-directory=esp --bootloader-id=GRUB $grub_disk || arch-chroot /mnt grub-install $grub_disk

arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg

umount -R /mnt

echo "Arch linux is installed. Reboot."

 



