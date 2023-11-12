gitClones() {
  echo "git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
  git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

  echo "git clone --depth=1 https://github.com/Shoshta73/bash-it.git ~/.bash_it"
  git clone --depth=1 https://github.com/Shoshta73/bash-it.git ~/.bash_it

  echo "git clone --depth=1 https://github.com/Shoshta73/AstroNvim.git ~/.config/nvim"
  git clone --depth=1 https://github.com/Shoshta73/AstroNvim.git ~/.config/nvim

  # We use Alacritty's default Linux config directory as our storage location here.
  echo "mkdir -p ~/.config/alacritty/themes"
  mkdir -p ~/.config/alacritty/themes
  
  echo "git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes"
  git clone --depth=1 https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
}

bashSymLinks() {
  echo "rm -rf ~/.bashrc"
  rm -rf ~/.bashrc
  echo "rm -rf ~/.bash_profile"
  rm -rf ~/.bash_profile
  echo "rm -rf ~/.bash_aliases"
  rm -rf ~/.bash_aliases

  echo "ln -s ~/dotfiles/bash/.bashrc ~/.bashrc"
  ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
  echo "ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile"
  ln -s ~/dotfiles/bash/.bash_profile ~/.bash_profile
  echo "ln -s ~/dotfiles/bash/.bash_aliases ~/.bash_aliases"
  ln -s ~/dotfiles/bash/.bash_aliases ~/.bash_aliases
  echo "ln -s ~/dotfiles/bash/bash-it-profiles.sh ~/.bash_it/profiles/"
  ln -s ~/dotfiles/bash/bash-it-profiles.sh ~/.bash_it/profiles/
}

symlinks() {
  echo "rm -rf ~/.profile"
  rm -rf ~/.profile
  echo "ln -s ~/dotfiles/.profile ~/.profile"
  ln -s ~/dotfiles/.profile ~/.profile
  bashSymLinks

  echo "rm -rf .tmux.conf"
  rm -rf .tmux.conf
  echo "ln -s ~/dotfiles/terminal/tmux/.tmux.conf ~/.tmux.conf"
  ln -s ~/dotfiles/terminal/tmux/.tmux.conf ~/.tmux.conf

  echo "rm -rf ~/.alacritty.yml"
  rm -rf ~/.alacritty.yml
  echo "ln -s ~/dotfiles/terminal/alacritty/.alacritty.yml ~/.config/alacritty/alacritty.yml"
  ln -s ~/dotfiles/terminal/alacritty/.alacritty.yml ~/.config/alacritty/alacritty.yml

  echo "rm -rf ~/.config/kitty/kitty.conf"
  rm -rf ~/.config/kitty/kitty.conf
  echo "ln -s ~/dotfiles/terminal/kitty/kitty.conf ~/.config/kitty/kitty.conf"
  ln -s ~/dotfiles/terminal/kitty/kitty.conf ~/.config/kitty/kitty.conf

  echo "rm -rf ~/.config/micro"
  rm -rf ~/.config/micro
  echo "ln -s ~/dotfiles/editors/micro ~/.config/micro"
  ln -s ~/dotfiles/editors/micro ~/.config/micro

  echo "rm -rf ~/.config/helix"
  rm -rf ~/.config/helix
  echo "ln -s ~/dotfiles/editors/helix ~/.config/helix"
  ln -s ~/dotfiles/editors/helix ~/.config/helix

  echo "ln -s ~/dotfiles/fonts/* ~/.local/share/fonts"
  ln -s ~/dotfiles/fonts/* ~/.local/share/fonts

  echo "rm -rf ~/.gitconfig"
  rm -rf ~/.gitconfig
  echo "ln -s ~/dotfiles/programs/git/.gitconfig ~/.gitconfig"
  ln -s ~/dotfiles/programs/git/.gitconfig ~/.gitconfig

  echo "sudo ln -s /usr/bin/helix /usr/bin/hx"
  sudo ln -s /usr/bin/helix /usr/bin/hx
  echo "sudo ln -s /usr/bin/google-chrome-stable /usr/bin/google-chrome"
  sudo ln -s /usr/bin/google-chrome-stable /usr/bin/google-chrome

  echo "rm -rf ~/.config/yakuakerc"
  rm -rf ~/.config/yakuakerc
  echo "ln -s ~/dotfiles/terminal/yakuake/yakuakerc ~/.config/yakuakerc"
  ln -s ~/dotfiles/terminal/yakuake/yakuakerc ~/.config/yakuakerc

  echo "rm ~/.config/yakuake.notifyrc"
  rm ~/.config/yakuake.notifyrc
  echo "ln -s ~/dotfiles/terminal/yakuake/yakuake.notifyrc ~/.config/yakuake.notifyrc"
  ln -s ~/dotfiles/terminal/yakuake/yakuake.notifyrc ~/.config/yakuake.notifyrc

  echo "ln -s ~/dotfiles/terminal/konsole/term.profile ~/.local/share/konsole/term.profile"
  ln -s ~/dotfiles/terminal/konsole/term.profile ~/.local/share/konsole/term.profile

  echo "rm ~/.config/konsole.notifyrc"
  rm ~/.config/konsole.notifyrc
  echo "ln -s ~/dotfiles/terminal/konsole/konsole.notifyrc ~/.config/konsole.notifyrc"
  ln -s ~/dotfiles/terminal/konsole/konsole.notifyrc ~/.config/konsole.notifyrc

  echo "rm ~/.config/konsolerc"
  rm ~/.config/konsolerc
  echo "ln -s ~/dotfiles/terminal/konsole/konsolerc ~/.config/konsolerc"
  ln -s ~/dotfiles/terminal/konsole/konsolerc ~/.config/konsolerc

}
