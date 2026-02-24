# dotfiles

This repository uses package-level GNU Stow directories.

Packages:

- `shell`
- `tmux`
- `nvim`
- `ghostty`
- `emacs`
- `uv`

## Setup on a new machine

```bash
# prerequisites
brew install git stow

# clone
git clone https://github.com/soohoonc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# symlink selected packages into $HOME
stow --target="$HOME" shell tmux nvim ghostty emacs uv
```

Reload your shell:

```bash
exec zsh
```

## If you have existing dotfiles

Back up files that conflict, then run stow again:

```bash
mv ~/.zshrc ~/.zshrc.bak 2>/dev/null
mv ~/.zprofile ~/.zprofile.bak 2>/dev/null
mv ~/.tmux.conf ~/.tmux.conf.bak 2>/dev/null
stow --target="$HOME" shell tmux nvim ghostty emacs uv
```

## Update later

```bash
cd ~/.dotfiles
git pull
stow --target="$HOME" shell tmux nvim ghostty emacs uv
```
