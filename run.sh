#!/bin/bash 
rpm -qa ansible | grep ansible > /dev/null || sudo dnf install -y python2 python2-dnf libselinux-python ansible 

#ansible-playbook  -i 'localhost ansible_become=true,' -c local --ask-sudo-pass -b playbook.yml $@
sudo ansible-playbook  -i 'localhost ansible_become=true,' -c local -b -v playbook.yml $@

exit

# Should be run as regular user
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-date true

gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

gsettings set org.gnome.software download-updates false

gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor display-right-margin true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor tabs-size 2
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true

gsettings set com.gexperts.Tilix.Settings focus-follow-mouse true
gsettings set com.gexperts.Tilix.Settings auto-hide-mouse true
gsettings set com.gexperts.Tilix.Settings copy-on-select true
gsettings set com.gexperts.Tilix.Settings terminal-title-show-when-single true
gsettings set com.gexperts.Tilix.Settings terminal-title-style 'none'
gsettings set com.gexperts.Tilix.Settings window-style 'borderless'

# sudo dnf  install https://prerelease.keybase.io/keybase_amd64.rpm
# run_keybase

#sudo dnf install fish -y
#chsh -s /usr/bin/fish kefah

gnome-shell-extension-tool -e user-theme

# wget -O /tmp/minwaita.tar.gz 'https://dl.opendesktop.org/api/files/download/id/1500416549/1500416549-Minwaita.tar.gz'
wget -O /tmp/Minwaita.tar.gz 'https://github.com/godlyranchdressing/Minwaita/raw/master/Minwaita.tar.gz'
mkdir ~/.themes/
cd ~/.themes/
tar -vxf /tmp/Minwaita.tar.gz
gsettings set org.gnome.shell.extensions.user-theme name 'Minwaita'
gsettings set org.gnome.desktop.interface gtk-theme 'Minwaita'
# gsettings set org.gnome.desktop.wm.preferences theme 'Minwaita'

git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
gnome-shell-extension-tool -e clipboard-indicator@tudmotu.com
# TODO: Set show notifications on copy to false
# OR
# sudo dnf install gnome-shell-extension-gpaste.noarch


gsettings set org.gnome.desktop.wm.preferences focus-mode 'mouse'

gsettings set org.gnome.desktop.interface show-battery-percentage true


# unarchive ~/.local/share/gnome-shell/extensions/TopIcons@phocean.net
# https://extensions.gnome.org/extension-data/TopIcons%40phocean.net.v21.shell-extension.zip

cd ~/Downloads
wget 'https://extensions.gnome.org/extension-data/no-title-bar%40franglais125.gmail.com.v8.shell-extension.zip'
unzip -d ~/.local/share/gnome-shell/extensions/no-title-bar@franglais125.gmail.com ./no-title-bar@franglais125.gmail.com.v8.shell-extension.zip
sudo dnf install xorg-x11-utils
gnome-shell-extension-tool -e no-title-bar@franglais125.gmail.com
cd -

# gsettings set org.gnome.desktop.interface scaling-factor 2
## gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

# Not working! :( 
# mkdir ~/.config/gtk-3.0/
# cp files/gtk.css ~/.config/gtk-3.0/

#sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code
