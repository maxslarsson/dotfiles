# Set some ZSH options
setopt autocd extendedglob nomatch menucomplete interactive_comments

# Don't highlight on paste
zle_highlight=('paste:none')

# Vim like shell
bindkey -v

# Path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Plugins
source /opt/homebrew/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting # Syntax highlighting
antigen bundle zsh-users/zsh-autosuggestions # Fish-like auto suggestions
antigen apply

# Initialize aliases
alias t="tmux-sessionizer"
alias v="nvim"
alias gg="lazygit"

# Initiailize functions
mdcd ()
{
    mkdir $@
    if [ $? -eq 0 ]; then
        if [[ ${@:-1} != -* ]]; then
            cd ${@:-1}
        fi
    fi
}

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

