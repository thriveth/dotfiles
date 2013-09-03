# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory #extendedglob
unsetopt autocd nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thriveth/.zshrc'

autoload -U compinit
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
antigen-bundle lol
antigen-bundle python

# Syntax highlighting bundle.
antigen-bundle zsh-users/zsh-syntax-highlighting
# History Substring Search must be loaded AFTER syntax highlighting.
antigen-bundle history-substring-search

# Load the theme.
antigen-theme fox
#antigen-theme bira

# Tell antigen that you're done.
antigen-apply

source ~/.zsh/zsh-git-prompt/zshrc.sh
source ~/.zsh/batt_stat/zshrc.sh
source ~/.zsh/MyBira.zsh-theme
source ~/.zsh/keybindings.sh

COMPLETION_WAITING_DOTS="true"

fortune | cowsay
echo '              vVv.|/vvv\\vVv||vvvv'

#PATH Variable:
#Add CASA to path first:
export PATH=~/Software/casapy/:$PATH
# Aliases for setting either EPD, Anaconda or Canopy as python dist:
alias epdsetup='export PATH=~/Software/EPD/bin:~/Software/casapy/:$PATH'
#export PATH=~/Software/EPD/bin:~/Software/casapy/:$PATH
alias anaconda='export PATH=~/anaconda/bin:$PATH'
#export PATH=~/anaconda/bin:~/Software/casapy/:$PATH
#alias canopysetup='export PATH=~/'
alias canopysetup='source ~/Enthought/Canopy_64bit/User/bin/activate'

export PYTHONPATH=$PYTHONPATH:/home/thriveth/Software/
