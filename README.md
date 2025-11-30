# Oldbook theme

[![Install from VSCode Marketplace](https://img.shields.io/badge/Install%20from-VSCode%20Marketplace-9a8f7d?logo=visualstudiocode&style=for-the-badge&logoColor=white)](https://marketplace.visualstudio.com/items?itemName=konstantin.oldbook-theme) [![Open VSX](https://img.shields.io/open-vsx/v/konstantin/oldbook-theme?color=70553a&style=for-the-badge)](https://open-vsx.org/extension/konstantin/oldbook-theme) [![Install in Zed](https://img.shields.io/badge/Install%20in-Zed-ede4d2?logo=zed&style=for-the-badge&logoColor=583b40)](https://zed.dev/extensions/oldbook-theme)

A colorscheme inspired by the feel of aged books. Minimal, soft, and readable. Now with a dark mode for VS Code!

### VS Code / Cursor / Antigravity

This theme is fully compatible with VS Code, Cursor, and Antigravity.

#### Light

![vscode](/images/screenshot-vscode.webp)

#### Dark

![vscode dark](/images/screenshot-vscode-dark.webp)

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

#### Usage

To use the colorscheme, add the following line to your `vimrc` or `init.vim`:

```vim
set background=light

colorscheme oldbook
```

### ZED

#### From extensions

1. Open Zed.
2. Open the command palette (<kbd>Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) and enter _zed: extensions_.
3. Search for the _Old book_ extension and install.
4. Enter _theme selector: toggle_ in the command palette and select the Old book theme in the dropdown.

#### Manually

1. Download [oldbook-color-theme.json](./themes/oldbook-color-theme.json)
2. Put into `~/.config/zed/themes/`

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

Thanks to [@kmartin91](https://github.com/kmartin91) for the initial implementation of the dark mode.
