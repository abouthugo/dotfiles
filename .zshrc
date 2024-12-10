# npm global package setup
NPM_PACKAGES="${HOME}/.npm-packages"

# adds custom scripts to the path
export PATH="$PATH:$HOME/bin:$NPM_PACKAGES/bin"

# Zsh config
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# custom env vars
# export $(envsubst < "$HOME/.env")
source $HOME/.zsh_env_vars

# Custom aliases
source $HOME/.zsh_aliases

# fnm
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

eval "$(fnm env --use-on-cd)"

# Zoxide
source $HOME/.zsh_zoxide_config

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Hyprland config
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
