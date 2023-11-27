# dotfiles

- [Homebrew](https://brew.sh/)
- [WezTerm](https://wezfurlong.org/wezterm/index.html)
- [Starship](https://starship.rs/)

## Install
```bash
brew install bat eza gnupg
```

```bash
# file: .zshrc
for file in ~/.config/zsh/**/*(.); do
  if [ -f $file ]; then
    source $file
  fi
done
```
