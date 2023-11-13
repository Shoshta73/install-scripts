set -x

makeDirs() {
  echo "Creating directories"
  mkdir -p ~/bin
  mkdir -p ~/Apps
  mkdir -p ~/Software
  mkdir -p ~/haxelib
  mkdir -p ~/.local/share/fonts
  echo "done creating directories"
}

cloneConfigs() {
  echo "Cloning configs"
  git clone https://github.com/Shoshta73/bash-it.git ~/.bash_it
  git clone https://github.com/Shoshta73/AstroNvim.git ~/.config/nvim
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  cd ~/dotfiles
  git submodule update --init terminal/alacritty/themes
  cd ~/
  echo "done cloning configs"
}

symlinkConfigFiles() {
  echo "Symlinking config files"
  ln -sf ~/dotfiles/terminal/alacritty/ ~/.config/alacritty
  ln -sf ~/dotfiles/terminal/tmux/tmux.conf ~/.tmux.conf

  ln -sf ~/dotfiles/terminal/konsole/konsole.motifyrc ~/.config/
  ln -sf ~/dotfiles/terminal/konsole/term.profile ~/.local/share/konsole/
  ln -sf ~/dotfiles/terminal/konsole/konsolerc ~/.config/

  ln -sf ~/dotfiles/terminal/yakuake/yakuake.motifyrc ~/.config/
  ln -sf ~/dotfiles/terminal/yakuake/yakuakerc ~/.config/

  ln -sf ~/dotfiles/bash/.bashrc ~/
  ln -sf ~/dotfiles/bash/.bash_aliases ~/
  ln -sf ~/dotfiles/bash/.bash_profile ~/
  ln -sf ~/dotfiles/bash-it-profiles/* ~/.bash_it/profiles/
  ln -sf ~/dotfiles/.profile ~/
  ln -sf ~/dotfiles/editors/fleet ~/.fleet
  # ln -sf ~/dotfiles/helix ~/.config/helix
  # ln -sf ~/dotfiles/micro ~/.config/micro
  # git submodule update --init editors/lite-xl/libraries/widget
  # git submodule update --init editors/lite-xl/plugins/lintplus
  # git submodule update --init editors/lite-xl/plugins/lsp

  echo "done symlinking config files"
}

setupConfigs() {
  echo "Setting up configs"
  cloneConfigs
  symlinkConfigFiles
  echo "done setting up configs"
}

installNPMpackages(){
  npm install -g npm@latest yo @vscode/vsce yarn pnpm generator-code purescript spago typescript vite
}

scriptedInstalls() {
  echo "Installing using scripts"

  echo "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  source "$HOME/.cargo/env"

  echo "curl -s "https://get.sdkman.io" | bash"
  curl -s "https://get.sdkman.io" | bash

  source ~/.sdkman/bin/sdkman-init.sh

  echo "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [  -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  echo "done installing using scripts"
}

wgetInstalls(){
  echo "Installing using wget"
  wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.3.0/Pomatez-v1.3.0-linux-x86_64.AppImage
  mv ~/bin/Pomatez-v1.3.0-linux-x86_64.AppImage ~/bin/Pomatez
  sudo chmod +x ~/bin/Pomatez
  wget -P ~/bin https://github.com/lunatask/lunatask/releases/download/v1.7.7/Lunatask-1.7.7.AppImage
  mv ~/bin/Lunatask-1.7.7.AppImage ~/bin/Lunatask
  sudo chmod +x ~/bin/Lunatask
  wget -P ~/bin https://download.cdn.viber.com/desktop/Linux/viber.AppImage
  mv ~/bin/viber.AppImage ~/bin/viber
  sudo chmod +x ~/bin/viber
  wget -P ~/Apps https://github.com/cassidoo/todometer/releases/download/v2.0.1/todometer.for.linux.zip
  unzip -d ~/Apps/todometer ~/Apps/todometer.for.linux.zip
  cp -r ~/Apps/todometer/linux-unpacked/* ~/Apps/todometer
  rm ~/Apps/todometer.for.linux.zip
  rm -rf ~/Apps/todometer/linux-unpacked/
  ln -s ~/Apps/todometer/todometer ~/bin/
  cd ~/bin
  curl -o eget.sh https://zyedidia.github.io/eget.sh
  shasum -a 256 eget.sh
  bash eget.sh
  rm -rf eget.sh
  cd ~/
  echo "Done isntalling using wget"
}

installFonts() {
  wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip
  wget -P ~/.local/share/fonts https://github.com/mishamyrt/Lilex/releases/download/2.200/Lilex.zip
  wget -P ~/.local/share/fonts -O ~/.local/share/fonts/LilexNerd.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Lilex.zip



  unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip
  unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip
  unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip
  unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip
  unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip
  unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip
  unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip
  unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip
  unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip
  unzip -d ~/.local/share/fonts/Lilex ~/.local/share/fonts/Lilex.zip
  unzip -d ~/.local/share/fonts/LilexNerd ~/.local/share/fonts/LilexNerd.zip

  rm -rf ~/.local/share/fonts/*.zip
  ln -s ~/dotfiles/fonts/* ~/.local/share/fonts/
}
