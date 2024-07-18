# NOTE config for linux machine, Mac has different config
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/dara/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git z zsh-syntax-highlighting pass conda-zsh-completion pip)

source $ZSH/oh-my-zsh.sh

# User configuration

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
## Neovim
alias vi='nvim'
alias vim='nvim'

## ls
alias la='lsd -lA'
alias ll='lsd -l'
alias lr="lsd -lr"
alias ls="lsd"

# Make man use bat as its pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

# opam configuration
[[ ! -r /home/dara/.opam/opam-init/init.zsh ]] || source /home/dara/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dara/opt/miniforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dara/opt/miniforge/etc/profile.d/conda.sh" ]; then
        . "/home/dara/opt/miniforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/dara/opt/miniforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/dara/opt/miniforge/etc/profile.d/mamba.sh" ]; then
    . "/home/dara/opt/miniforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
