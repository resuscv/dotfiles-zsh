# -*- shell-script -*-
#
# Update the default to *my* path
MY_PATH=".:$HOME/bin:$HOME/.cabal/bin"

LOCAL_MOD=${0}.`uname`
if [[ -e ${LOCAL_MOD} ]]; then
  # Are there any machine specific configurations?
  source ${LOCAL_MOD}
fi
unset LOCAL_MOD

# Update the PATH
export PATH="${MY_PATH}:${PATH}"

unset MY_PATH
