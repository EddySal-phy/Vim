# Vim Configuration

This repository contains a Vim configuration file (`vimrc_config_1.txt`) designed for productivity and programming support, with plugins managed by [Vim-Plug](https://github.com/junegunn/vim-plug).

## Prerequisites

This configuration requires certain dependencies to be installed on your system, including:

- `cscope`: For code browsing support.
- `curl`: To download the Vim-Plug plugin manager.
- **LaTeX Viewer**:
  - `zathura` for Unix systems, or
  - `Skim` for macOS.
- `clang`: For C/C++ autocompletion.
- **Python 3** (optional): Required if using Neovim.
- **LaTeX (TexLive)**: For LaTeX document editing with `vimtex` plugin.

## Installation

Follow these steps to install the configuration and dependencies.

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/vim-config.git
cd vim-config
```

### 2. RUn the Installation Script
To simplify the setup, run the provided `install.sh script`, which will install all necessary dependencies for your OS:

```bash
chmod +x install.sh
./install.sh
```
The script will:

- Detect your operating system (Linux or macOS).
- Install the required dependencies using apt-get (Linux) or brew (macOS).
- Install Vim-Plug for managing plugins.
- Optionally, install the Neovim Python client if Python 3 is available.

### 3. Link or Copy the Vim Configuration File

To use this configuration as your default, link or copy the `vimrc_config_1.txt` file to your home directory as `.vimrc`:

```bash
ln -s ~/path-to-repo/vim-config/vimrc_config_1.txt ~/.vimrc
```
Alternatively, you can rename it:

```bash
cp vimrc_config_1.txt ~/.vimrc
```
### 4. Instal Plugins

Open Vim and install the plugins listed in the configuration by running:

```bash
:PlugInstall
```
This command installs all plugins specified in the `vimrc_config_1.txt` file.

## Optional: Neovim Configuration

If you're using Neovim, create a configuration directory and link the configuration file as `init.vim`:

```bash
mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

## Usage Tips

###Some useful commands:


- `:NERDTreeToggle` - Toggle file tree view (NERDTree plugin).
- `:VimtexCompile` - Compile a LaTeX document.
- `:PlugUpdate` - Update installed plugins.
- `:PlugClean` - Remove unused plugins.

### Customization

Feel free to edit the `vimrc_config_1.txt` file to adjust the configuration to your preferences. The configuration includes:


- Color schemes: Set to `everforest` (can be modified).
- Autocompletion: Enabled with nvim-lspconfig and nvim-cmp.
- LaTeX support: Configured with vimtex for advanced LaTeX editing.



## Troubleshooting

If you encounter issues, check for:

- Missing dependencies (error messages in Vim may indicate these).
- Plugin errors; try running `:PlugClean` to remove unused or outdated plugins, then `:PlugInstall`.

For any issues, please open an issue in this repository.


