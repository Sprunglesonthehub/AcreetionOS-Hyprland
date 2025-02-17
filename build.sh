if [ "ls /usr/bin/ | grep mkarchiso" != "mkarchiso" ] ; then
  sudo pacman -Sy archiso --noconfirm
fi

sudo rm -rf /var/cache/pacman/*
 rm -rf work/ && rm -rf out/ && sudo /usr/bin/mkarchiso -L AcreetionOS-Hyprland-Edition -v -o ../ISO . -j$nproc && sudo rm -rf ./work

