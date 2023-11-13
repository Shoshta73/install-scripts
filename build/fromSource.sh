buildNvim() {
  cd ~/Software
  git clone https://github.com/neovim/neovim
  cd neovim
  make CMAKE_BUILD_TYPE=Release
  sudo make install
  cd ~/
}

buildAseprite() {
  cd ~/Apps
  git clone --depth=1 --recursive --shallow-submodules  https://github.com/aseprite/aseprite
  cd aseprite
  mkdir build
  mkdir deps
  cd deps
  mkdir skia
  cd skia
  wget https://github.com/aseprite/skia/releases/download/m102-861e4743af/Skia-Linux-Release-x64-libc++.zip
  unzip Skia-Linux-Release-x64-libc++.zip
  rm Skia-Linux-Release-x64-libc++.zip
  cd ..
  cd ..
  cd build
  export CC=clang
  export CXX=clang++
  cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_FLAGS:STRING=-stdlib=libc++ \
    -DCMAKE_EXE_LINKER_FLAGS:STRING=-stdlib=libc++ \
    -DLAF_BACKEND=skia \
    -DSKIA_DIR=$HOME/Apps/aseprite/deps/skia \
    -DSKIA_LIBRARY_DIR=$HOME/Apps/aseprite/deps/skia/out/Release-x64 \
    -DSKIA_LIBRARY=$HOME/Apps/aseprite/deps/skia/out/Release-x64/libskia.a \
    -G Ninja \
    ..
  ninja aseprite
}
