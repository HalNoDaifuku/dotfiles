# shellcheck disable=SC2148

# zsh history settings
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=3000
export SAVEHIST=3000
export HISTORY_IGNORE="(ipatool *|sl *|*email*|*password*)"
zshaddhistory() {
    emulate -L zsh
    [[ ${1%%$'\n'} != ${~HISTORY_IGNORE} ]]
}
setopt extended_history
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt share_history

# completions
setopt globdots
setopt correct_all
zstyle ':completion:*' list-colors "${LS_COLORS}"

# starship
eval "$(starship init zsh)"
