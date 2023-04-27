# shellcheck disable=SC2148

# man(less) color
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'

# Rust
if [ -f "$HOME/.cargo/env" ]; then
    source "$HOME/.cargo/env"
fi

if type sccache > /dev/null 2>&1; then
    export RUSTC_WRAPPER=$(which sccache)
elif type cachepot > /dev/null 2>&1; then
    export RUSTC_WRAPPER=$(which cachepot)
fi

# bat
if type bat > /dev/null 2>&1; then
    export BAT_CONFIG_PATH="$HOME/.config/bat/config"
fi

# sheldon
if type sheldon > /dev/null 2>&1; then
    eval "$(sheldon source)"
fi
