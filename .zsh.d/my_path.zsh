# -*- shell-script -*-
#

# Update the default to *my* path
MY_PATH=".:$HOME/bin"
# ...and to MANPATH
MY_MANPATH="$HOME/software/man"

LOCAL_MOD=${0}.`uname`
if [[ -e ${LOCAL_MOD} ]]; then
    # Are there any machine specific configurations?
    source ${LOCAL_MOD}
fi
unset LOCAL_MOD

# added by Anaconda2 2.4.1 installer
# Modified by me...
ANACONDA_PATH=${HOME}/software/installed/anaconda2/bin
if [[ -d ${ANACONDA_PATH} ]]; then
    MY_PATH="${ANACONDA_PATH}:${MY_PATH}"
fi
unset ANACONDA_PATH

# Update the PATHs
export PATH="${MY_PATH}:${PATH}"
# Only run this on machines that have man installed (some docker containers don't)
[[ -x $(which man) ]] && export MANPATH="${MY_MANPATH}:$(man -w)"

unset MY_PATH
unset MY_MANPATH
