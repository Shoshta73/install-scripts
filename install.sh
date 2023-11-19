#!/usr/bin/env bash

set -x

source ~/dotfiles/install-scripts/commons.sh

cd ~/

makeDirs

echo "Select your distribution:"
echo "1. Alpine"
echo "2. Arch"
echo "3. ArcoLinux"
echo "4. Manjaro"
echo "5. Garuda"
echo "6. Debian"
echo "7. Ubuntu"
echo "8. Pop!_OS"
echo "9. Linux Mint"
echo "10. Slackware"
echo "11. Void Linux"
echo "12. openSUSE"
echo "13. Fedora"

read -p "Enter the number corresponding to your distribution: " distro_number

case $distro_number in
  2)
    echo "You are using Arch Linux."
    export DISTRO=arch
    source ~/dotfiles/install-scripts/arch.sh

    installArchNeeded
    installyay
    setupConfigs
    scriptedInstalls
    installNPMpackages
    archInstall
    wgetInstalls
    installFonts
    ;;
  3)
    echo "You are using Arco Linux."
    export DISTRO=arco
    source ~/dotfiles/install-scripts/arch.sh

    installArchNeeded
    installyay
    setupConfigs
    scriptedInstalls
    installNPMpackages
    archInstall
    wgetInstalls
    installFonts
    ;;
  4)
    echo "You are using Manjaro Linux."
    export DISTRO=manjaro
    source ~/dotfiles/install-scripts/arch.sh

    installArchNeeded
    installyay
    setupConfigs
    scriptedInstalls
    installNPMpackages
    archInstall
    wgetInstalls
    installFonts
    ;;
  5)
    echo "You are using Garuda Linux."
    export DISTRO=garuda
    source ~/dotfiles/install-scripts/arch.sh

    installArchNeeded
    installyay
    setupConfigs
    scriptedInstalls
    installNPMpackages
    archInstall
    wgetInstalls
    installFonts
    ;;
  *)
    echo "Arch is HOME."
    ;;
esac

gh auth login

cd ~/dotfiles
git submodule update --init private
cd ~/

if [ ! -d "$HOME/dotfiles/private" ]; then
  echo "bye have a gret time"
else
  source ~/dotfiles/private/private.sh
  private
fi

source ~/.bashrc
bahs-it profile load arch

case "$DISTRO" in
  "arch"|"arco"|"garuda"|"manjaro")
    yay -Syu
    ;;
  *)
    echo "ARCH IS HOME"
    ;;
esac
