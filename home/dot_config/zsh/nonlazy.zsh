# shellcheck disable=SC2148

# zsh history settings
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=3000
export SAVEHIST=3000
export HISTORY_IGNORE="(ipatool *|sl *|*email*|*password*)"
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt correct
setopt share_history
zshaddhistory() {
    emulate -L zsh
    [[ ${1%%$'\n'} != ${~HISTORY_IGNORE} ]]
}

# starship
eval "$(starship init zsh)"
