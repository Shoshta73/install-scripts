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
  1)
    echo "You are using Alpine Linux."
    export DISTRO=alpine
    echo "not implemented yet"
    ;;
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
    echo "not implemented yet"
    ;;
  4)
    echo "You are using Manjaro Linux."
    export DISTRO=manjaro
    echo "not implemented yet"
    ;;
  5)
    echo "You are using Garuda Linux."
    export DISTRO=garuda
    echo "not implemented yet"
    ;;
  6)
    echo "You are using Debian."
    export DISTRO=debian
    echo "not implemented yet"
    ;;
  7)
    echo "You are using Ubuntu."
    export DISTRO=ubuntu
    echo "not implemented yet"
    ;;
  8)
    echo "You are using Pop!_OS."
    export DISTRO=pop
    echo "not implemented yet"
    ;;
  9)
    echo "You are using Linux Mint."
    export DISTRO=mint
    echo "not implemented yet"
    ;;
  10)
    echo "You are using Slackware Linux."
    export DISTRO=slackware
    echo "not implemented yet"
    ;;
  11)
    echo "You are using Void Linux."
    export DISTRO=void
    echo "not implemented yet"
    ;;
  12)
    echo "You are using openSUSE."
    export DISTRO=opensuse
    echo "not implemented yet"
    ;;
  13)
    echo "You are using Fedora."
    export DISTRO=fedora
    echo "not implemented yet"
    ;;
  *)
    echo "Invalid selection."
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
  privatae
fi

source ~/.bashrc
bahs-it profile load arch
