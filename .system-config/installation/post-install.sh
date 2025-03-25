# services to enable
sudo systemctl enable gdm
sudo systemctl enable ufw
sudo systemctl enable docker
sudo systemctl enable bluetooth

# enabling ufw firewall
sudo ufw enable

# create history file for zsh
touch ~/zsh-history

# change default shell of user
chsh -s $(which zsh) umair

sudo usermod -aG docker $USER
