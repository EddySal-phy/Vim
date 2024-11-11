#!/bin/bash

echo "Starting installation of dependencies for Vim configuration..."

# Check the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected OS: Linux"
    sudo apt-get update
    # Install core dependencies
    sudo apt-get install -y cscope curl zathura neovim clang python3 python3-pip texlive-full
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected OS: macOS"
    # Ensure Homebrew is installed
    if ! command -v brew &>/dev/null; then
        echo "Homebrew is not installed. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    # Install core dependencies
    brew install cscope curl skim neovim clang python3 texlive
else
    echo "Unsupported OS. Please install dependencies manually."
    exit 1
fi

# Install Vim-Plug
echo "Installing Vim-Plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Python client for Neovim (optional but recommended)
if command -v python3 &>/dev/null; then
    echo "Installing Neovim Python client..."
    pip3 install --user neovim
fi

echo "All dependencies installed! You may now open Vim and run :PlugInstall to install the plugins."

