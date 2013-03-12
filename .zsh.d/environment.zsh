# -*- shell-script -*-
#
# Environment variables for zsh

# I don't like others seeing my files.
umask 077

# Set this to to avoid having consecutive duplicate commands and other
# not so useful information appended to the history list.
export HISTIGNORE="&:ls:l: "

# This is because I invariably forget to lift my finger from the shift
# key when I do a 'xxxxx | m', and the older "less"es don't have '-R'! 
# To save time I'm _ASSUMING_ that if one is on a Linux box then less
# is OK.
export LESS="-iR"

export EDITOR="nano"
