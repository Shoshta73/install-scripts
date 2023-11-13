set -x

needed=("nala" "git" "curl" "wget" "zip" "unzip" "tar")

installDebNeeded() {
  for tool in "${needed[@]}"; do
    echo "Installing: $tool"
    echo "sudo apt install $tool -y"
    sudo apt install "$tool" -y
  done
  echo "done installing needed tools"
}

installEditors() {
  echo "installing editors"
  read -p "Do you want to install nvim from source (y/n) " answear
  if [ "$answear" == "y" || "$answear" == "Y" || "$answear" == "yes" || "$answear" == "YES" ]; then
    source ~/dotfiles/install-scripts/build/fromSource.sh
    source ~/dotfiles/install-scripts/build/deps.sh
    UbunutDebianNvimDeps
    buildNvim
  else
    read -p "Use appimmage (y/n) " answear
    if [ "$answear" == "y" || "$answear" == "Y" || "$answear" == "yes" || "$answear" == "YES" ]; then
      wget -p ~/bin https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
      chmod u+x ~/bin/nvim.appimage
      mv ~/bin/nvim.appimage ~/bin/nvim
      sudo cp ~/bin/nvim /bin/nvim
    else
      sudo sudo apt install neovim
    fi
  fi

  sudo sudo apt install kate

  sudo apt-get install wget gpg
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
  sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
  rm -f packages.microsoft.gpg
  sudo apt install apt-transport-https
  sudo apt update
  sudo apt install code # or code-insiders

  echo "you will need to install IntelliJ IDEA Community Edition manually"
  echo "you will need to install Android Studio manually"
}

installProgLangs(){
  echo "installing programming languages"
  sudo apt install clang
  sudo apt install gcc
  sudo apt install lua5.3
  sudo apt install python3
  sudo apt install python3-pip
  sudo apt install python3-venv
  cd ~/Software
  wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.9-stable.tar.xz
  tar -xf flutter_linux_3.13.9-stable.tar.xz
  rm flutter_linux_3.13.9-stable.tar.xz
  wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz
  tar -xf go1.21.4.linux-amd64.tar.gz
  sudo tar -C /usr/local -xf go1.21.4.linux-amd64.tar.gz
  rm go1.21.4.linux-amd64.tar.gz
  cd ~/

  sdk install java
  sdk install kotlin
  sdk install groovy
  sdk install maven
}

installGitTools() {
  echo "installing git tools"
  wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
  sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
  sudo apt update && sudo apt install github-desktop
  sudo apt install meld
  sudo apt install gitg
  sudo apt install gh
  wget https://github.com/dandavison/delta/releases/download/0.16.5/git-delta_0.16.5_amd64.deb
  sudo dpkg -i git-delta_0.16.5_amd64.deb
  rm git-delta_0.16.5_amd64.deb
}

installTerminalTools() {
  echo "installing terminal tools"
  sudo apt install konsole
  sudo apt install yakuake
  sudo apt install tmux
  cargo install alacritty
  sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
  cargo install tokei
  sudo apt install trash-cli
  cargo install bat
  cargo install eza
  cargo install btop
  sudo apt install tldr
  wget https://objects.githubusercontent.com/github-production-release-asset-2e65be/340181518/18af63aa-cc3f-4b92-b49d-265364ad805a?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231112%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231112T170746Z&X-Amz-Expires=300&X-Amz-Signature=1c561ebe22b875a3a5c5318c7021604a4e29d56c04096a318756cade70de91e2&X-Amz-SignedHeaders=host&actor_id=128172135&key_id=0&repo_id=340181518&response-content-disposition=attachment%3B%20filename%3Dfastfetch-2.2.3-Linux.deb&response-content-type=application%2Foctet-stream
  sudo dpkg -i fastfetch-2.2.3-Linux.deb
  rm fastfetch-2.2.3-Linux.deb
  echo "done installing terminal tools"
}

installOfficeTools() {
  echo "installing office tools"
  wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.4.16/obsidian_1.4.16_amd64.deb
  sudo dpkg -i obsidian_1.4.16_amd64.deb
  rm obsidian_1.4.16_amd64.deb
  sudo apt install xournalpp
  sudo apt install ghostwriter
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update
  sudo apt install brave-browser
  wget https://download.bluemail.me/BlueMail/deb/BlueMail.deb
  sudo dpkg -i BlueMail.deb
  rm BlueMail.deb
  wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11708/wps-office_11.1.0.11708.XA_amd64.deb
  sudo dpkg -i wps-office_11.1.0.11708.XA_amd64.deb
  rm wps-office_11.1.0.11708.XA_amd64.deb
  wget https://dl.discordapp.net/apps/linux/0.0.34/discord-0.0.34.deb
  sudo dpkg -i discord-0.0.34.deb
  rm discord-0.0.34.deb
  echo "done installing office tools"
}

installBuildTools() {
  echo "installing build tools"
  sudo apt install cmake
  sudo apt install ninja
  sudo apt install premake
  sudo apt install xmake
  echo "done installing build tools"
}

debInstall() {
  installEditors
  installProgLangs
  installTerminalTools
  installGitTools
  installOfficeTools
  installBuildTools
}
