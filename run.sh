#!/bin/bash
sudo dnf install -y python2 python2-dnf libselinux-python ansible
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm # https://prerelease.keybase.io/keybase_amd64.rpm https://d11yldzmag5yn.cloudfront.net/prod/2.2.128200.0702/zoom_x86_64.rpm

sudo dnf update -y
sudo ansible-playbook  -i 'localhost ansible_become=true,' -c local -b -v playbook.yml $@

exit


# sudo dnf  install https://prerelease.keybase.io/keybase_amd64.rpm
# run_keybase

#sudo dnf install fish -y
#chsh -s /usr/bin/fish kefah

#gnome-shell-extension-tool -e user-theme

# wget -O /tmp/minwaita.tar.gz 'https://dl.opendesktop.org/api/files/download/id/1500416549/1500416549-Minwaita.tar.gz'
#wget -O /tmp/Minwaita.tar.gz 'https://github.com/godlyranchdressing/Minwaita/raw/master/Minwaita.tar.gz'
#mkdir ~/.themes/
#cd ~/.themes/
#tar -vxf /tmp/Minwaita.tar.gz
#gsettings set org.gnome.shell.extensions.user-theme name 'Minwaita'
#gsettings set org.gnome.desktop.interface gtk-theme 'Minwaita'
# gsettings set org.gnome.desktop.wm.preferences theme 'Minwaita'

#git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
#gnome-shell-extension-tool -e clipboard-indicator@tudmotu.com
# TODO: Set show notifications on copy to false
# OR
# sudo dnf install gnome-shell-extension-gpaste.noarch




# unarchive ~/.local/share/gnome-shell/extensions/TopIcons@phocean.net
# https://extensions.gnome.org/extension-data/TopIcons%40phocean.net.v21.shell-extension.zip

#cd ~/Downloads
#wget 'https://extensions.gnome.org/extension-data/no-title-bar%40franglais125.gmail.com.v8.shell-extension.zip'
#unzip -d ~/.local/share/gnome-shell/extensions/no-title-bar@franglais125.gmail.com ./no-title-bar@franglais125.gmail.com.v8.shell-extension.zip
#sudo dnf install xorg-x11-utils
#gnome-shell-extension-tool -e no-title-bar@franglais125.gmail.com
#cd -

# gsettings set org.gnome.desktop.interface scaling-factor 2
## gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Not working! :(
# mkdir ~/.config/gtk-3.0/
# cp files/gtk.css ~/.config/gtk-3.0/

#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
#sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#sudo dnf check-update
#sudo dnf install code


