wgetInstalls() {
  echo "mkdir -p ~/bin"
  mkdir -p ~/bin

  echo "mkdir -p ~/Software"
  mkdir -p ~/Software

  echo "mkdir -p ~/Apps"
  mkdir -p ~/Apps

  echo "wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.3.0/Pomatez-v1.3.0-linux-x86_64.AppImage"
  wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.3.0/Pomatez-v1.3.0-linux-x86_64.AppImage

  echo "mv ~/bin/Pomatez-v1.3.0-linux-x86_64.AppImage ~/bin/Pomatez"
  mv ~/bin/Pomatez-v1.3.0-linux-x86_64.AppImage ~/bin/Pomatez

  echo "sudo chmod +x ~/bin/Pomatez"
  sudo chmod +x ~/bin/Pomatez

  echo "wget -P ~/bin https://github.com/lunatask/lunatask/releases/download/v1.7.7/Lunatask-1.7.7.AppImage"
  wget -P ~/bin https://github.com/lunatask/lunatask/releases/download/v1.7.7/Lunatask-1.7.7.AppImage

  echo "mv ~/bin/Lunatask-1.7.7.AppImage ~/bin/Lunatask"
  mv ~/bin/Lunatask-1.7.7.AppImage ~/bin/Lunatask

  echo "sudo chmod +x ~/bin/Lunatask"
  sudo chmod +x ~/bin/Lunatask

  echo "wget -P ~/bin https://github.com/alagrede/znote-app/releases/download/v2.3.9/znote-2.3.9.AppImage"
  wget -P ~/bin https://github.com/alagrede/znote-app/releases/download/v2.3.9/znote-2.3.9.AppImage

  echo "mv ~/bin/znote-2.3.9.AppImage ~/bin/znote"
  mv ~/bin/znote-2.3.9.AppImage ~/bin/znote

  echo "sudo chmod +x ~/bin/znote"
  sudo chmod +x ~/bin/znote

  echo "wget -P ~/bin https://download.cdn.viber.com/desktop/Linux/viber.AppImage"
  wget -P ~/bin https://download.cdn.viber.com/desktop/Linux/viber.AppImage

  echo "mv ~/bin/viber.AppImage ~/bin/viber"
  mv ~/bin/viber.AppImage ~/bin/viber

  echo "sudo chmod +x ~/bin/viber"
  sudo chmod +x ~/bin/viber

  echo "wget -P ~/Apps https://github.com/cassidoo/todometer/releases/download/v2.0.1/todometer.for.linux.zip"
  wget -P ~/Apps https://github.com/cassidoo/todometer/releases/download/v2.0.1/todometer.for.linux.zip

  echo "unzip -d ~/Apps/todometer ~/Apps/todometer.for.linux.zip"
  unzip -d ~/Apps/todometer ~/Apps/todometer.for.linux.zip

  echo "cp -r ~/Apps/todometer/linux-unpacked/* ~/Apps/todometer"
  cp -r ~/Apps/todometer/linux-unpacked/* ~/Apps/todometer

  echo "rm ~/Apps/todometer.for.linux.zip"
  rm ~/Apps/todometer.for.linux.zip

  echo "rm -rf ~/Apps/todometer/linux-unpacked/"
  rm -rf ~/Apps/todometer/linux-unpacked/

  echo "ln -s ~/Apps/todometer/todometer ~/bin/"
  ln -s ~/Apps/todometer/todometer ~/bin/


  echo "cd ~/bin"

  echo "curl -o eget.sh https://zyedidia.github.io/eget.sh"
  curl -o eget.sh https://zyedidia.github.io/eget.sh

  echo "shasum -a 256 eget.sh"
  shasum -a 256 eget.sh

  echo "bash eget.sh"
  bash eget.sh

  echo "rm -rf eget.sh"
  rm -rf eget.sh

  echo "cd"
  cd

  echo "wget -P ~/bin https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu"
  wget -P ~/bin https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu

  echo "cd ~/Software"
  cd ~/Software

  echo "wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.9-stable.tar.xz"
  wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.9-stable.tar.xz

  echo "tar -xf flutter_linux_3.13.9-stable.tar.xz"
  tar -xf flutter_linux_3.13.9-stable.tar.xz

  echo "rm flutter_linux_3.13.9-stable.tar.xz"
  rm flutter_linux_3.13.9-stable.tar.xz

  echo "cd"
  cd
}

scriptedInstalls() {
  echo "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  echo "curl -s "https://get.sdkman.io" | bash"
  curl -s "https://get.sdkman.io" | bash

  echo "source ~/.sdkman/bin/sdkman-init.sh"
  source ~/.sdkman/bin/sdkman-init.sh

  echo "sdk install java"
  sdk install java

  echo "sdk install kotlin"
  sdk install kotlin

  echo "sdk install groovy"
  sdk install groovy

  echo "sdk install maven"
  sdk install maven
}

npmInstalls() {
  echo "sudo npm install -g npm@latest yo @vscode/vsce yarn pnpm generator-code purescript spago typescript vite"
  sudo npm install -g npm@latest yo @vscode/vsce yarn pnpm generator-code purescript spago typescript vite
}
