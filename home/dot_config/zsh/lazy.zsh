# shellcheck disable=SC2148

# PROMPT
# if !(type starship > /dev/null 2>&1); then
#     PROMPT='┌ %F{cyan}%n@%m%f %F{magenta}%d%f
# └ %# '
#     RPROMPT='%F{green}[%W %*]%f'
# fi

# Homebrew
if [ -f /opt/homebrew/bin/brew ] || [ -f /usr/local/bin/brew ] || [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    source $ZSHRC_DIR/.config/shell/homebrew.sh
fi

# env
source $ZSHRC_DIR/.config/shell/env.sh

# alias
source $ZSHRC_DIR/.config/shell/alias.sh

# function
source $ZSHRC_DIR/.config/shell/function.sh

# bindkeys
bindkey -e

# completions
setopt globdots
zstyle ':completion:*' list-colors "${LS_COLORS}"

# FPATH
export FPATH="$HOME/.zfunc:$FPATH"

## Delete the same PATH
typeset -U PATH
typeset -U FPATH
