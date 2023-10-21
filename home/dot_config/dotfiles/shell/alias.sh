# shellcheck disable=SC2148
# alias
if type grep > /dev/null 2>&1; then
    alias grep='grep --color=auto'
fi

if type fgrep > /dev/null 2>&1; then
    alias fgrep='fgrep --color=auto'
fi

if type egrep > /dev/null 2>&1; then
    alias egrep='egrep --color=auto'
fi

if type tree > /dev/null 2>&1; then
    alias tree='tree -C'
fi

if type ls > /dev/null 2>&1; then
    alias ls='ls -F --color=auto'
    alias ll='ls -lh'
    alias la='ls -a'
fi

if type colordiff > /dev/null 2>&1; then
    alias diff='colordiff'
fi

if type eza > /dev/null 2>&1; then
    alias eza='LS_COLORS= eza -F --color=auto --icons'
    alias ezal='eza -lh'
    alias ezaa='eza -a'
fi

if type zellij > /dev/null 2>&1; then
    alias zellij='FIG_NEW_SESSION=1 zellij'
fi

# alias ls='eza'
# alias cat='bat'
# alias find='fd'
