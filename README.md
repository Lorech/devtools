# Dev Tools

My personal stack and configurations for various development (and adjacent) tools I use.

## Terminal

### [iTerm2](https://iterm2.com/)

An improved and more powerful replacement for the built-in Terminal app on macOS.

Styled using the [Catppuccin theme for iTerm](https://github.com/catppuccin/iterm).

Configuration for this is found in the `iterm2` directory. To install, simply import
the relevant file into the relevant section of the settings.

### [Oh My Zsh!](https://ohmyz.sh/)

An extension to the default ZSH shell that macOS comes with. Adds support for theming
and various plugins on top of regular ZSH.

Themes:

- [powerlevel10k](https://github.com/romkatv/powerlevel10k)

Plugins:

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) for syntax highlighting
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) for auto-suggestions when typing
- [Color LS](https://github.com/athityakumar/colorls) for a prettier `ls` command
  - This is a Ruby script with a separate executable, but I have aliased it to replace the original `ls` of ZSH.

Pre-made configuration for this will be added soon.

## Text Editors

### [Neovim](https://neovim.io/)

An in-terminal text editor for improved productivity (working on it), and extensive customability (worked on it).

Configured with the [Catppuccin theme for Neovim](https://github.com/catppuccin/nvim) and a whole bunch of
developer tools, I am still getting into the whole Neovim world.

Configuration for this is found in the `nvim` directory. To install, copy the directory to `~/config`

## Fonts

### [Cousine Nerd Font Mono](https://www.nerdfonts.com/)

This is the primary font I'm using in all aforementioned environments. As it's a nerd font, it comes with icons.
