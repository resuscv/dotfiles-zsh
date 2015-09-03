# -*- shell-script -*-
#
# Configuration for hacking in Python
#
# Based on:
#   - http://blog.adamdklein.com/?p=416
#
# Make sure that 'virtualenv' is installed:
#  $ sudo apt-get install python-virtualenv
#  $ sudo pip install virtualenvwrapper

PY_VEW=/usr/local/bin/virtualenvwrapper.sh

if [ -x ${PY_VEW} ]; then
	source /usr/local/bin/virtualenvwrapper.sh
	export WORKON_HOME=$HOME/.config/python-virtualenvs
fi

unset PY_VEW
