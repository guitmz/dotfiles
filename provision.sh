#!/bin/bash

mkdir -p $HOME/.config
mkdir -p $HOME/.config/bspwm
mkdir -p $HOME/.config/sxhkd

# sudo wpa_passphrase SSID PASSWORD > /etc/wpa_supplicant.conf
# sudo killall wpa_supplicant
# sudo wpa_supplicant -i wlp3s0 -B -c /etc/wpa_supplicant.conf
# sudo dhcpclient wlp3s0

cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd $HOME
rehash

yay -S wget dmenu sxhkd rxvt-unicode termite git vim lxappearence firefox leafpad tumbler evince xbindkeys binutils make thunar raw-thumbnailer pulseaudio pulseaudio-alsa pavucontrol mpv unzip unrar p7zip scrot file-roller compton feh python-pip go docker nitrogen lightdm-gtk-greeter-settings nitrogen w3m gpick neofetch rofi libxcb python2 xcb-proto xcb-util-image xcb-util-wm xcb-util-xrm cava cairo cmus cmatrix bash-pipes lxappearance ttf-unifont siji-git ttf-font-awesome ttf-anonymous-pro noto-fonts adobe-source-code-pro-fonts feh arc-gtk-theme volumeicon mpd alsa-utils xorg-xranrd ranger atool ntp gucharmap wireless_tools zsh dunst emacs visual-studio-code-bin xorg-xprop

sudo systemctl ntpd stop
sudo ntpd -gq
sudo systemctl ntpd enable
sudo systemctl ntpd start

sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker guitmz

# spacemacs
# git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

yay -S polybar

git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
cd $HOME

wget https://raw.githubusercontent.com/baskerville/bspwm/master/examples/bspwmrc -O $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/bspwm/bspwmrc

wget https://raw.githubusercontent.com/baskerville/bspwm/master/examples/sxhkdrc -O $HOME/.config/bspwm/sxhkdrc

# nm-connection-editor
# nmcli c up SSID

cd /tmp
git clone https://github.com/guitmz/dotfiles
cd dotfiles
cp -r .config $HOME




