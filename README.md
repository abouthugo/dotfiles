Before anything make sure GNU Stow is installed along with `eza`, `zoxide` and `i3`
```shell
sudo pacman -S stow eza zoxide i3 i3lock xss-lock xset flameshot ripgrep
```

# Dependencies

- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)
  - Download the font and the move the files to `~/.local/share/fonts/` then run `fc-cache`
- [neovim](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [fnm](https://github.com/Schniz/fnm)
- [eza](https://github.com/eza-community/eza?tab=readme-ov-file)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [yay](https://github.com/Jguer/yay)
  - `zathura zathura-djvu zathura-pdf-poppler`
- [Gnu Stow](https://www.gnu.org/software/stow/)

## Tiling Manager
- [i3](https://i3wm.org/downloads/) & `i3status`
- `dmenu` - I patched [my own version](https://github.com/abouthugo/dmenu)
  - see [this YouTube video](https://youtu.be/bBJ0qxqzlxk) in case you get stuck
- `xorg` & `xorg-init`
- `feh`

## TMUX

Install the dependencies

```shell
sudo pacman -S tmux
```

You will also need the [TMUX package manager](https://github.com/tmux-plugins/tpm) TPM for short

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

You can start a tmux session now and don't forget to install the tmux packages listed in the configuration file by
pressing <kbd>prefix</kbd> + <kbd>I</kbd> once in tmux.

# Custom Scripts Folder

I like to have a custom folder in my home directory which contains scripts I use regularly.

```shell
mkdir $HOME/bin
```
