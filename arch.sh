set -x

needed=("curl" "wget" "git" "zip" "unzip" "tar" "go" "base-devel")

installArchNeeded() {
  for tool in "${needed[@]}"; do
    echo "Installing: $tool"
    echo "sudo pacman -S --needed $tool --noconfirm"
    sudo pacman -S --needed "$tool" --noconfirm
  done
  echo "done installing needed tools"
}

installyay () {
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
  cd ~/
}

installEditors() {
  echo "installing editors"
  read -p "Do you want to install nvim from source (y/n) " answear
  if [ "$answear" == "y" ] || [ "$answear" == "Y" ] || [ "$answear" == "yes" ] || [ "$answear" == "YES" ]; then
    source ~/dotfiles/install-scripts/build/fromSource.sh
    source ~/dotfiles/install-scripts/build/deps.sh
    archNvimDeps
    buildNvim
  else
    yay -S --needed --noconfirm neovim
  fi

  yay -S --needed --noconfirm kate
  yay -S --needed --noconfirm intellij-idea-community-edition
  yay -S --needed --noconfirm visual-studio-code-bin
  yay -S --needed --noconfirm jetbrains-fleet
  yay -S --needed --noconfirm android-studio
  echo "done installing editors"
}

installProgLangs(){
  echo "installing programming languages"

  yay -S --needed go
  yay -S --needed clang
  yay -S --needed gcc
  yay -S --needed lua
  yay -S --needed python
  yay -S --needed python-pip
  yay -S --needed python-venv

  cd ~/Software
  wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.9-stable.tar.xz
  tar -xf flutter_linux_3.13.9-stable.tar.xz
  rm flutter_linux_3.13.9-stable.tar.xz
  cd ~/

  sdk install java
  sdk install kotlin
  sdk install groovy
  sdk install maven
  echo "done installing programming languages"
}

installTerminalTools(){
  echo "installing terminal tools"
  yay -S --needed konsole
  yay -S --needed yakuake
  yay -S --needed tmux
  yay -S --needed alacritty
  yay -S --needed tokei
  yay -S --needed trash-cli
  yay -S --needed tldr
  yay -S --needed bat
  yay -S --needed eza
  yay -S --needed btop
  yay -S --needed fastfetch
  echo "done installing terminal tools"
}

installGitTools(){
  echo "installing git tools"
  yay -S --needed github-desktop-bin
  yay -S --needed meld
  yay -S --needed gitg
  yay -S --needed github-cli
  yay -S --needed git-delta
}

installOfficeTools(){
  echo "installing office tools"
  yay -S --needed discord
  yay -S --needed obsidian
  yay -S --needed xournalpp
  yay -s --needed ghostwriter
  yay -S --needed brave-bin
  yay -S --needed bluemail
  yay -S --needed wps-office
  echo "done installing office tools"
}

installBuildTools() {
  echo "installing build tools"
  yay -S --needed cmake
  yay -S --needed ninja
  yay -S --needed premake
  yay -S --needed xmake
  echo "done installing build tools"
}

archInstall(){
  installEditors
  installProgLangs
  installTerminalTools
  installGitTools
  installOfficeTools
  installBuildTools
  yay -S --needed pavucontrol
}
