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
- [kanata](https://github.com/jtroo/kanata) also see the guide to [avoid using sudo on linux](https://github.com/jtroo/kanata/wiki/Avoid-using-sudo-on-Linux)
- [wl-copy](https://man.archlinux.org/man/wl-clipboard.1.en)
- ttf-joypixels
- hyprland
- uwsm & libnewt
- dunst

## Tiling Manager

- [hyprland](https://wiki.hyprland.org/)
- `dmenu` - I patched [my own version](https://github.com/abouthugo/dmenu)
  - see [this YouTube video](https://youtu.be/bBJ0qxqzlxk) in case you get stuck

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
