#!/bin/bash
# install.sh - Script de instalación mínima para configurar Neovim con este repo
# Uso: ./install.sh

set -e

# 1. Instalar vim-plug para Neovim
PLUG_PATH="$HOME/.local/share/nvim/site/autoload/plug.vim"
if [ ! -f "$PLUG_PATH" ]; then
  echo "Instalando vim-plug..."
  curl -fLo "$PLUG_PATH" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "vim-plug ya está instalado."
fi

# 2. Instalar Nerd Fonts (ejemplo: FiraCode)
FONT_DIR="$HOME/.local/share/fonts"
FONT_ZIP="$FONT_DIR/FiraCode.zip"
if [ ! -d "$FONT_DIR/FiraCode" ]; then
  echo "Descargando FiraCode Nerd Font..."
  mkdir -p "$FONT_DIR"
  curl -fLo "$FONT_ZIP" \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
  unzip -o "$FONT_ZIP" -d "$FONT_DIR/FiraCode"
  rm "$FONT_ZIP"
  fc-cache -fv "$FONT_DIR"
  echo "FiraCode Nerd Font instalada."
else
  echo "FiraCode Nerd Font ya está instalada."
fi

# 3. Instalar dependencias básicas (neovim, curl, unzip)
if ! command -v nvim >/dev/null 2>&1; then
  echo "Instalando Neovim..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install neovim
  else
    sudo apt update && sudo apt install -y neovim
  fi
else
  echo "Neovim ya está instalado."
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "Instalando curl..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install curl
  else
    sudo apt update && sudo apt install -y curl
  fi
fi

if ! command -v unzip >/dev/null 2>&1; then
  echo "Instalando unzip..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install unzip
  else
    sudo apt update && sudo apt install -y unzip
  fi
fi

# 4. Mensaje final
echo "\nInstalación mínima completada."
echo "Recuerda seleccionar 'FiraCode Nerd Font' como fuente en la configuración de tu terminal para ver los iconos."
echo "Abre Neovim y ejecuta :PlugInstall para instalar los plugins."
