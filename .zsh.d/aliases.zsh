# -*- shell-script -*-
#
# Aliases for zsh

export NONE='\033[00m'
export RED='\033[01;31m'
export GREEN='\033[01;32m'
export YELLOW='\033[01;33m'
export PURPLE='\033[01;35m'
export CYAN='\033[01;36m'
export WHITE='\033[01;37m'
export BOLD='\033[1m'
export UNDERLINE='\033[4m'


alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
#alias clean='rm -f .*~ *~ \#*# .\#* >& /dev/null'


#  Programs
############
#
# More or Less
#
alias m='less'
alias M='less'

# Editors
alias p=nano
#e () { emacs "$@" & }
#alias ue='emacs -nw'
e () { emacsclient "$@" & }
alias ue='emacsclient -nw'

# Let's save on typing.
alias md='mkdir'
alias rd='rmdir'
mcd() { mkdir -p $1 && cd $1 ; }

# Return only the filenames that match the grep
alias fgrep='grep -l'
#fgrep() { find . -type f -mindepth 1 -maxdepth 1 -exec grep -l $1 '{}' ';' | grep -v '/\.git/' }

alias run='make run'
# 'Cos I just can't get this one right.
#alias pusdh=pushd

# ls related commands.
alias ls='ls -F --color=auto'
alias l='ls -Flah'
# These are a messy way to do the job, but they work!
lsx() { ls "${@:-.}"/*(*); }
alias lsc='ls *.([cCfFhrR]|sh|[Ff]90|pcm)'
alias  lc='l  *.([cCfFhrR]|sh|[Ff]90|pcm)'

alias pss='ps xauww | grep "^${USER}"'
alias pso='ps xau | grep -vE "^(${USER}|root)"'

alias history_off='unset HISTFILE ; tmux rename-window -t${TMUX_PANE} "History OFF"'
