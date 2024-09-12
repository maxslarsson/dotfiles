# Set some ZSH options
setopt autocd extendedglob nomatch menucomplete interactive_comments

# Don't highlight on paste
zle_highlight=('paste:none')

# Vim like shell
bindkey -v

# Set variables
export LANG="en_US.UTF-8"

# C flags
export LDFLAGS="$LDFLAGS -L$(brew --prefix)/lib" 
export CFLAGS="$CFLAGS -I$(brew --prefix)/include" 
export CPPFLAGS="$CPPFLAGS -I$(brew --prefix)/include"
export LD_LIBRARY_PATH="/usr/local/lib"
export PKG_CONFIG_PATH="/opt/homebrew/lib/pkgconfig"

# Plugins
source /opt/homebrew/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-syntax-highlighting # Syntax highlighting
antigen bundle zsh-users/zsh-autosuggestions # Fish-like auto suggestions
antigen apply

# Initialize aliases
alias l="ls -alh"
alias c="clear"
alias t="tmux-sessionizer"
alias v="nvim"
alias gg="lazygit"
alias rm="trash"
alias idf='. $HOME/dev/esp-idf/export.sh'
alias rv='docker run -i -t --rm -v `pwd`:/root ghcr.io/sampsyo/cs3410-infra'
alias rvgcc='rv gcc -Wall -Wextra -Wpedantic -Wshadow -Wformat=2 -std=c17'
alias rvrun='rv qemu'

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


export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources


# pnpm
export PNPM_HOME="/Users/maxlarsson/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
