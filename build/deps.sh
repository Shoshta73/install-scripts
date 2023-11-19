set -x

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
