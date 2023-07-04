# Set some ZSH options
setopt autocd extendedglob nomatch menucomplete interactive_comments

# Don't highlight on paste
zle_highlight=('paste:none')

# Vim like shell
bindkey -v

# Path
export PATH="/opt/homebrew/bin:$PATH"

# Plugins
source /opt/homebrew/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting # Syntax highlighting
antigen bundle zsh-users/zsh-autosuggestions # Fish-like auto suggestions
antigen apply

# Initialize aliases
alias v="nvim"
alias gg="lazygit"

# Initiailize fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Initialize pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Initialize Zoxide
eval "$(zoxide init zsh)"

# Initialize prompt
eval "$(starship init zsh)"

