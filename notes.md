
# Firefox / chrome: Hide titlebar
# Customize: uncheck "title bar"
# Use system title bar and borders ==> off
# enable flatback and 3rdparty repos (including chrome)
# enable gnomeshell extension for firefox
# Disable search gsettings
# /org/gnome/desktop/search-providers/disabled
#  ['org.gnome.Contacts.desktop', 'org.gnome.Documents.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Boxes.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.Characters.desktop', 'org.gnome.clocks.desktop', 'org.gnome.GPaste.Ui.desktop', 'org.gnome.Photos.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Software.desktop']
# /org/freedesktop/tracker/miner/files/index-recursive-directories
#  ['&DESKTOP']
# /org/freedesktop/tracker/miner/files/index-recursive-directories
#  @as []
# enable tryicons and notitlebar extensions




sudo su -
vim /etc/default/grub
# disable nouveau 
# GRUB_CMDLINE_LINUX="rhgb quiet nouveau.modeset=0"
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
grub2-mkconfig -o /boot/grub2/grub.cfg

# grubby --update-kernel=ALL --args='nvidia-drm.modeset=1'
# Uninstall
# dnf remove xorg-x11-drv-nvidia\*
# lsmod |grep nouveau


# dnf config-manager --set-enabled rpmfusion-nonfree-nvidia-driver
# dnf repository-packages rpmfusion-nonfree-nvidia-driver info

dnf install kernel-devel kernel-headers gcc dkms acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig
dnf install --enablerepo=rpmfusion-nonfree-nvidia-driver xorg-x11-drv-nvidia akmod-nvidia
dnf install xorg-x11-drv-nvidia akmod-nvidia
dnf install xorg-x11-drv-nvidia-cuda 
dnf install nvidia-modprobe

# Firefox Menu -> Customise - Uncheck "Title Bar" at bottom left.

 dconf watch /

gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
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
gsettings set com.gexperts.Tilix.window-style 'disable-csd-hide-toolbar'
gsettings set com.gexperts.Tilix.terminal-title-style 'none'

gsettings set org.gnome.desktop.wm.preferences focus-mode 'mouse'
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.sound.allow-volume-above-100-percent true

gsettings set org.gnome.clocks.world-clocks "[{'location': <(uint32 2, <('San Francisco', 'KSFO', true, [(0.65658801258494626, -2.1356672871875406)], [(0.659296885757089, -2.1366218601153339)])>)>}, {'location': <(uint32 2, <('New York', 'KNYC', true, [(0.71180344078725644, -1.2909618758762367)], [(0.71059804659265924, -1.2916478949920254)])>)>}, {'location': <(uint32 2, <('London', 'EGLL', true, [(0.89855367075064974, -0.0078539816339744835)], [(0.89884456477707964, -0.0020362232784242244)])>)>}, {'location': <(uint32 2, <('Istanbul', 'LTBA', true, [(0.71500322271810779, 0.50294571860079684)], [(0.71590981654476371, 0.505529765824837)])>)>}]"

gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'google-chrome.desktop', 'com.gexperts.Tilix.desktop', 'org.gnome.gedit.desktop', 'org.gnome.Nautilus.desktop']"

sudo dnf install gnome-shell-extension-gpaste
gnome-shell-extension-tool -e GPaste@gnome-shell-extensions.gnome.org
gnome-shell-extension-tool -e suspend-button@laserb
gnome-shell-extension-tool -e TopIcons@huttli


gsettings set org.gnome.shell.extensions.topicons.tray-pos 'right'

# gsettings set org.gnome.software download-updates false


wget -O /tmp/minwaita.tar.gz https://github.com/godlyranchdressing/Minwaita/releases/download/V1.6/Minwaita.tar.gz
cd ~/.themes/
tar -vxf /tmp/minwaita.tar.gz
gnome-shell-extension-tool -e user-theme
gnome-shell-extension-tool -e 'user-theme@gnome-shell-extensions.gcampax.github.com'

gsettings set org.gnome.shell.extensions.user-theme name 'Minwaita'
gsettings set org.gnome.desktop.interface gtk-theme 'Minwaita'
gsettings set org.gnome.desktop.wm.preferences theme 'Minwaita'

gsettings set org.gnome.desktop.interface.text-scaling-factor 0.75


# Not working yet
# wget -O /tmp/v8.zip https://github.com/franglais125/no-title-bar/archive/v8.zip
# cd ~/.local/share/gnome-shell/extensions/
# unzip /tmp/v8.zip
# gnome-shell-extension-tool 

