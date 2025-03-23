# installing packages
sudo pacman -S --needed $(awk '{print $1}' applications-list)

# installing yay an aur helper
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
rm -rf ~/yay

# installing packages from aur
yay -S --needed $(awk '{print $1}' applications-list-aur)
