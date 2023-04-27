# PROMPT
PROMPT='┌ %F{cyan}%n@%m%f %F{magenta}%d%f
└ %# '
RPROMPT='%F{green}[%W %*]%f'

# zsh settings
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

# completions
setopt globdots
zstyle ':completion:*' list-colors "${LS_COLORS}"
