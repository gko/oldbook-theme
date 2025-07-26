# Oldbook theme

[![Install from VSCode Marketplace](https://img.shields.io/badge/Install%20from-VSCode%20Marketplace-9a8f7d?logo=visualstudiocode&style=for-the-badge&logoColor=white)](https://marketplace.visualstudio.com/items?itemName=konstantin.oldbook-theme)

A colorscheme inspired by the feel of aged books. Minimal, soft, and readable.

### VSCODE

![vscode](/images/screenshot-vscode.jpg)

### VIM / NVIM
![vim](/images/screenshot.jpg)

### ZED
![zed](/images/screenshot-zed.jpg)

## Installation

### VIM / NVIM

You can install this theme using your favorite Vim plugin manager.

#### Vim-plug

```vim
Plug 'gko/oldbook-theme'
```

#### Manual Installation

1.  Create the `colors` directory if it doesn't exist:
      * **Vim:** `mkdir -p ~/.vim/colors`
      * **Neovim:** `mkdir -p ~/.config/nvim/colors`
2.  Copy `colors/oldbook.vim` into that directory.

### ZED

#### Install Manually

1. Download [zed-oldbook-color-theme.json](./themes/zed-oldbook-color-theme.json)
2. Put into `~/.config/zed/themes/`

## Usage

To use the colorscheme, add the following line to your `vimrc` or `init.vim`:

```vim
set background=light

colorscheme oldbook
```
