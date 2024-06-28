# Path to your oh-my-zsh installation.
export ZSH="/Users/daramac/.oh-my-zsh"

ZSH_THEME="dracula"

plugins=(git zsh-syntax-highlighting z pass conda-zsh-completion)

source $ZSH/oh-my-zsh.sh

# User configuration

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# opam configuration
[[ ! -r /Users/daramac/.opam/opam-init/init.zsh ]] || source /Users/daramac/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Created by `pipx` on 2023-12-04 17:06:50
export PATH="$PATH:/Users/daramac/.local/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
