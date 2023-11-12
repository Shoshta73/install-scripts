git clone https://github.com/Shoshta73/dotfiles
mkdir -p ~/bin
mkdir -p ~/.local/bin
mkdir -p ~/Apps
mkdir -p ~/opt
mkdir -p ~/.local/share/fonts
sudo pacman -S --needed git base-devel
sudo pacman -S wget
sudo pacman -S curl
sudo pacman -S zip
sudo pacman -S unzip
sudo pacman -S github-cli glab
sudo pacman -S tmux
sudo pacman -S yakuake alacritty 
sudo pacman -S python-pywal
sudo pacman -S python-pip
sudo pacman -S calc
sudo pacman -S rofi
sudo pacman -S polybar
sudo pacman -S ranger
sudo pacman -S thunar
sudo pacman -S tldr man trash-cli eza bat
sudo pacman -S gcc clang
sudo pacman -S cmake premake
sudo pacman -S zig
sudo pacman -S nodejs npm
sudo pacman -S neovim
sudo pacman -S nvidia
sudo pacman -S haxe obsidian discord pusleaudio paprefs
mkdir ~/haxelib && haxelib setup ~/haxelib

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~/
yay -S slack-desktop
yay -S fastfetch
yay -S spotify
yay -S fastfetch
yay -S slack-desktop
yay -S github-desktop-bin
yay -S visual-studio-code-bin
yay -S godot
yay -S sublime-text-4
yay -S sublime-merge
yay -S wps-office
yay -S hotspot
yay -S android-studio

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

sdk install java
sdk install kotlin
sdk install groovy
sdk install maven

mkdir -p ~/.local/share/fonts

wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip

unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip
unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip
unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip
unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip
unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip
unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip
unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip
unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip
unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip

rm -rf ~/.local/share/fonts/*.zip

wget -P ~/bin https://github.com/zidoro/pomatez/releases/download/v1.3.0/Pomatez-v1.3.0-linux-x86_64.AppImage
mv ~/bin/Pomatez-v1.3.0-linux.AppImage ~/bin/Pomatez
sudo chmod +x ~/bin/Pomatez

wget -P ~/bin https://github.com/lunatask/lunatask/releases/download/v1.7.7/Lunatask-1.7.7.AppImage
mv ~/bin/Lunatask-1.7.7.AppImage ~/bin/Lunatask
sudo chmod +x ~/bin/Lunatask

wget -P ~/bin https://github.com/alagrede/znote-app/releases/download/v2.3.9/znote-2.3.9.AppImage
mv ~/bin/znote-2.3.9.AppImage ~/bin/znote
sudo chmod +x ~/bin/znote

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
#~/.bash_it/install.sh -- insteractive

# Untill i make my own polybar configuration
wget -P ~/bin/ https://github.com/firecat53/networkmanager-dmenu/raw/main/networkmanager_dmenu

sudo npm install -g npm@latest
sudo npm i -g yo @vscode/vsce yarn pnpm generator-code
sudo npm install -g purescript spago
sudo npm install -g typescript vite 

gh auth login
