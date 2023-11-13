archNvimDeps() {
  yay -S --needed base-devel
  yay -S --needed cmake
  yay -S --needed unzip
  yay -S --needed ninja
  yay -S --needed curl
}

archAsepriteDeps(){
  yay -S --needed gcc
  yay -S --needed clang
  yay -S --needed libc++
  yay -S --needed cmake
  yay -S --needed ninja
  yay -S --needed libx11
  yay -S --needed libxcursor
  yay -S --needed mesa-libgl
  yay -S --needed fontconfig
}

UbunutDebianNvimDeps() {
  sudo apt-get install ninja-build
  sudo apt-get install gettext
  sudo apt-get install cmake
  sudo apt-get install unzip
  sudo apt-get install curl
}

ubunutDebianAsepriteDeps(){
  sudo apt-get install -y g++
  sudo apt-get install -y clang
  sudo apt-get install -y libc++-dev
  sudo apt-get install -y libc++abi-dev
  sudo apt-get install -y cmake
  sudo apt-get install -y ninja-build
  sudo apt-get install -y libx11-dev
  sudo apt-get install -y libxcursor-dev
  sudo apt-get install -y libxi-dev
  sudo apt-get install -y libgl1-mesa-dev
  sudo apt-get install -y libfontconfig1-dev
}
