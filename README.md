# Configuration files

Here are all my config files sync via dotbot.

## Overview

- macOS
- shell client: iTerm2
- shell interpreter: zsh + oh-my-zsh (ease config)
- shell theme: spaceship
- vscode theme: night owl
- font (vscode+shell): Fira Mono (+ligatures)

## New installation

You can clone this whenever you want:

```
git clone git@github.com:girardinsamuel/dotfiles.git
```

**Without** sudo run:
Check `install` to see what the install script is going to do.

```
cd dotfiles/
./install
```

## Update

Config files are auto symlinked so every changes in config files appears in this repository.
To backup/sync, just commit the changes.

## Additional manual configuration

- Install FiraCode font (to use in VS Code) <https://github.com/tonsky/FiraCode>
- Install VS Code theme

```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```
