source ~/.zsh/exports.zsh

#ZSH_THEME="agnoster"

#GEOMETRY_SYMBOL_PROMPT=""

plugins=(
  git
)
#source ~/Projects/GitHub/geometry/geometry.zsh
#source ~/Projects/GitHub/agnoster-zsh-theme/agnoster.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Launch a tmux session
if [[ "$HOST" =~ "crmdevvm-" ]]; then
  source ~/.zsh/autorun-same-tmux.zsh
fi

# Lazy-loading
### source ~/.zsh/sandboxd.zsh

# Load terminal configuration
source ~/.zsh/title.zsh
source ~/.zsh/prompt.zsh

# Load plugins
source ~/.zsh/prezto.zsh
source ~/.zsh/zsh-notify.zsh
source ~/.zsh/antigen.zsh
source ~/.zsh/opts.zsh
#source ~/.zsh/keybindings.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/funcs.zsh
#source ~/.zsh/kubectl.zsh
#source ~/.zsh/fzf.zsh
source ~/.zsh/ssh.zsh
#source ~/.zsh/mse.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
