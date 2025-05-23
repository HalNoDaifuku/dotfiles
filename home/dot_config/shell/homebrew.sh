# shellcheck disable=SC2148

# Homebrew
if [ -f /opt/homebrew/bin/brew ]; then
    export SCRIPT_HOMEBREW_PATH="/opt/homebrew"
elif [ -f /usr/local/bin/brew ]; then
    export SCRIPT_HOMEBREW_PATH="/usr/local"
elif [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
    export SCRIPT_HOMEBREW_PATH="/home/linuxbrew/.linuxbrew"
fi
smartcache eval $SCRIPT_HOMEBREW_PATH/bin/brew shellenv
alias brew="PATH='$SCRIPT_HOMEBREW_PATH/bin:$SCRIPT_HOMEBREW_PATH/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/sbin' brew"
## extentions
FPATH=$SCRIPT_HOMEBREW_PATH/share/zsh/site-functions:$FPATH

# openssl
export PATH="$SCRIPT_HOMEBREW_PATH/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/openssl@1.1/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/openssl@1.1/include"

# openldap
export PATH="$SCRIPT_HOMEBREW_PATH/opt/openldap/bin:$PATH"
export PATH="$SCRIPT_HOMEBREW_PATH/opt/openldap/sbin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/openldap/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/openldap/include"

# curl
export PATH="$SCRIPT_HOMEBREW_PATH/opt/curl/bin:$PATH"
FPATH=$SCRIPT_HOMEBREW_PATH/opt/curl/share/zsh/site-functions:$FPATH
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/curl/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/curl/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/curl/lib/pkgconfig"

# perl
# PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# readline
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/readline/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/readline/include"

# sqlite
export PATH="$SCRIPT_HOMEBREW_PATH/opt/sqlite/bin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/sqlite/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/sqlite/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/sqlite/lib/pkgconfig"

# python@3.9
export PATH="$SCRIPT_HOMEBREW_PATH/opt/python@3.9/libexec/bin:$PATH"
# $SCRIPT_HOMEBREW_PATH/lib/python3.9/site-packages

# ruby
export PATH="$SCRIPT_HOMEBREW_PATH/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$SCRIPT_HOMEBREW_PATH/opt/ruby/bin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/ruby/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/ruby/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/ruby/lib/pkgconfig"

# libffi
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/libffi/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/libffi/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/libffi/lib/pkgconfig"

# m4
export PATH="$SCRIPT_HOMEBREW_PATH/opt/m4/bin:$PATH"

# libtool
# In order to prevent conflicts with Apple's own libtool we have prepended a "g"
# so, you have instead: glibtool and glibtoolize.

# guile
# Guile libraries can now be installed here:
#     Source files: $SCRIPT_HOMEBREW_PATH/share/guile/site/3.0
#   Compiled files: $SCRIPT_HOMEBREW_PATH/lib/guile/3.0/site-ccache
#       Extensions: $SCRIPT_HOMEBREW_PATH/lib/guile/3.0/extensions
# Add the following to your .bashrc or equivalent:
export GUILE_LOAD_PATH="$SCRIPT_HOMEBREW_PATH/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="$SCRIPT_HOMEBREW_PATH/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="$SCRIPT_HOMEBREW_PATH/lib/guile/3.0/extensions"

# gnutls
# If you are going to use the Guile bindings you will need to add the following to your .bashrc or equivalent in order for Guile to find the TLS certificates database:
export GUILE_TLS_CERTIFICATE_DIRECTORY="$SCRIPT_HOMEBREW_PATH/etc/gnutls/"

# icu4c
export PATH="$SCRIPT_HOMEBREW_PATH/opt/icu4c/bin:$PATH"
export PATH="$SCRIPT_HOMEBREW_PATH/opt/icu4c/sbin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/icu4c/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/icu4c/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/icu4c/lib/pkgconfig"

# tesseract
# This formula contains only the "eng", "osd", and "snum" language data files.
# If you need any other supported languages, run `brew install tesseract-lang`.

# nurses
export PATH="$SCRIPT_HOMEBREW_PATH/opt/ncurses/bin:$PATH"
# export LDFLAGS="-L$SCRIPT_HOMEBREW_PATH/opt/ncurses/lib"
# export CPPFLAGS="-I$SCRIPT_HOMEBREW_PATH/opt/ncurses/include"
# export PKG_CONFIG_PATH="$SCRIPT_HOMEBREW_PATH/opt/ncurses/lib/pkgconfig"

# tmux
# $SCRIPT_HOMEBREW_PATH/opt/tmux/share/tmux

# make
PATH="$SCRIPT_HOMEBREW_PATH/opt/make/libexec/gnubin:$PATH"

# git
# Emacs Lisp files have been installed to:
#   /opt/homebrew/share/emacs/site-lisp/git

# coreutils
# Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".
# If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:
PATH="$SCRIPT_HOMEBREW_PATH/opt/coreutils/libexec/gnubin:$PATH"

# gnu-sed
PATH="$SCRIPT_HOMEBREW_PATH/opt/gnu-sed/libexec/gnubin:$PATH"

# findutils
PATH="$SCRIPT_HOMEBREW_PATH/opt/findutils/libexec/gnubin:$PATH"

# asdf
if [ -f "$SCRIPT_HOMEBREW_PATH/opt/asdf/libexec/asdf.sh" ]; then
    source $SCRIPT_HOMEBREW_PATH/opt/asdf/libexec/asdf.sh
fi

# docker
PATH="$HOME/.docker/bin:$PATH"
