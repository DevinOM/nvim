# DevinOM's neovim configs

## Prerequisites

- Homebrew
- NeoVim

## First time setup

Clone Packer

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install ripgrep

```bash
brew install ripgrep
```

Activate nvim

```bash
nvim .
```

Run withing nvim

```lua
:PackerSync
```

Run Mason installations

```lua
:Mason
```

## Note

If NeoVim to match the background of your terminal run the following in nvim:

```lua
:lua CMP()
```
