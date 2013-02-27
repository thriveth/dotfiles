# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory extendedglob
unsetopt autocd nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thriveth/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/thriveth/Software/antigen.zsh
# Load the oh-my-zsh's library.
antigen-lib

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen-bundle git
antigen-bundle heroku
antigen-bundle pip
antigen-bundle lein
antigen-bundle command-not-found

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen-theme bira

# Tell antigen that you're done.
antigen-apply