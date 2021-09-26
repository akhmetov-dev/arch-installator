echo Creating folders in ~...
mkdir ~/Programming
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Music
mkdir ~/Films
echo Done.

echo Installing packages...
sudo pacman -S man neofetch alsa-utils alsa-plugins firefox unzip wofi waybar lightdm lightdm-gtk-greeter nemo telegram-desktop okular speedtest-cli
# Copy sway config files
mkdir ~/.config/sway
cp sway/config ~/.config/sway

unzip JetBrains_Mono.zip -d ~/Downloads
mkdir /usr/share/local/fonts
mkdir /usr/share/local/fonts/ttf
sudo mv ~/Downloads/*ttf /usr/local/share/fonts/ttf

mkdir ~/.config/alacritty
cp alacritty/alacritty.yml ~/.config/alacritty

mkdir ~/.config/waybar
cp waybar ~/.config/waybar

# Oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cp .bashrc ~

sudo cp -r arch-installator/backgrounds/ /usr/share/

systemctl enable lightdm
cp lightdm/lightdm-gtk-greeter.conf /etc/lightdm/
