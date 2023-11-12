download_fonts(){
  echo "mkdir -p ~/.local/share/fonts"
  mkdir -p ~/.local/share/fonts

  echo "wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip"
  wget -P ~/.local/share/fonts https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Iosevka.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/IosevkaTerm.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraMono.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip

  echo "wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip"
  wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Ubuntu.zip

  echo "wget -P ~/.local/share/fonts https://github.com/mishamyrt/Lilex/releases/download/2.200/Lilex.zip"
  wget -P ~/.local/share/fonts https://github.com/mishamyrt/Lilex/releases/download/2.200/Lilex.zip

  echo "wget -P ~/.local/share/fonts -O LilixNerd.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Lilex.zip"
  wget -P ~/.local/share/fonts -O ~/.local/share/fonts/LilexNerd.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Lilex.zip



  echo "unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip"
  unzip -d ~/.local/share/fonts/JetBrainsMono-2-304 ~/.local/share/fonts/JetBrainsMono-2.304.zip
  echo "unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip"
  unzip -d ~/.local/share/fonts/JetBrainsMono ~/.local/share/fonts/JetBrainsMono.zip
  echo "unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip"
  unzip -d ~/.local/share/fonts/Iosevka ~/.local/share/fonts/Iosevka.zip
  echo "unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip"
  unzip -d ~/.local/share/fonts/IosevkaTerm ~/.local/share/fonts/IosevkaTerm.zip
  echo "unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip"
  unzip -d ~/.local/share/fonts/NerdFontsSymbolsOnly ~/.local/share/fonts/NerdFontsSymbolsOnly.zip
  echo "unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip"
  unzip -d ~/.local/share/fonts/FiraCode ~/.local/share/fonts/FiraCode.zip
  echo "unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip"
  unzip -d ~/.local/share/fonts/FiraMono ~/.local/share/fonts/FiraMono.zip
  echo "unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip"
  unzip -d ~/.local/share/fonts/UbuntuMono ~/.local/share/fonts/UbuntuMono.zip
  echo "unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip"
  unzip -d ~/.local/share/fonts/Ubuntu ~/.local/share/fonts/Ubuntu.zip
  echo "unzip -d ~/.local/share/fonts/Lilex ~/.local/share/fonts/Lilex.zip"
  unzip -d ~/.local/share/fonts/Lilex ~/.local/share/fonts/Lilex.zip
  echo "unzip -d ~/.local/share/fonts/LilexNerd ~/.local/share/fonts/LilexNerd.zip"
  unzip -d ~/.local/share/fonts/LilexNerd ~/.local/share/fonts/LilexNerd.zip

  echo "rm -rf ~/.local/share/fonts/*.zip"
  rm -rf ~/.local/share/fonts/*.zip
}
