sudo systemctl enable gdm
sudo systemctl enable ufw
sudo systemctl enable docker
sudo systemctl enable bluetooth
sudo systemctl enable systemd-resolved

sudo ufw enable

chsh -s $(which zsh) umair

sudo usermod -aG docker $USER

atuin login -u umair-sh
