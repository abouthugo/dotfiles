# adds custom scripts to the path
export PATH="$PATH:$HOME/bin"

# Zsh config
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# custom env vars
export $(envsubst < "$HOME/.env")
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

gcloud_sdk_dir="$HOME/Downloads/gsutil-raw/google-cloud-sdk"
gcloud_sdk_path="$gcloud_sdk_dir/path.zsh.inc"
# The next line updates PATH for the Google Cloud SDK.
if [ -f $gcloud_sdk_path ]; then
  . $gcloud_sdk_path;
fi

gcloud_completion_config="$gcloud_sdk_dir/completion.zsh.inc"
# The next line enables shell command completion for gcloud.
if [ -f $gcloud_completion_config ]; then
  . $gcloud_completion_config;
fi
