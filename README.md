# Oldbook theme

[![Install from VSCode Marketplace](https://img.shields.io/badge/Install%20from-VSCode%20Marketplace-9a8f7d?logo=visualstudiocode&style=for-the-badge&logoColor=white)](https://marketplace.visualstudio.com/items?itemName=konstantin.oldbook-theme)

A Vim colorscheme inspired by the feel of aged books. Minimal, soft, and readable.

### VSCODE

![vscode](/screenshot-vscode.jpg)

### VIM
![vim](/screenshot.jpg)

## Installation

You can install this theme using your favorite Vim plugin manager.

**vim-plug**

```vim
Plug 'gko/oldbook-theme'
```

**Manual Installation**

1.  Create the `colors` directory if it doesn't exist:
      * **Vim:** `mkdir -p ~/.vim/colors`
      * **Neovim:** `mkdir -p ~/.config/nvim/colors`
2.  Copy `colors/oldbook.vim` into that directory.

## Usage

To use the colorscheme, add the following line to your `vimrc` or `init.vim`:

```vim
set background=light

colorscheme oldbook
```
