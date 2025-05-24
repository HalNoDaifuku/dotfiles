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

# completions
# starship
if type starship > /dev/null 2>&1; then
    smartcache comp starship completions zsh
fi

# sheldon
if type sheldon > /dev/null 2>&1; then
    smartcache comp sheldon completions --shell zsh
fi

# FPATH
export FPATH="$HOME/.zfunc:$FPATH"
