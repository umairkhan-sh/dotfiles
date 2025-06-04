sudo pacman -S --needed $(awk '{print $1}' applications-list)

git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
rm -rf ~/yay

cd ~/dotfiles/.system-config/installation

yay -S --needed $(awk '{print $1}' applications-list-aur)
