# -*- shell-script -*-
#
## From http://www.subsymbol.org/2012/12/unit-test-fairies.html
## with over-engineering by Olaf  https://github.com/resuscv/dotfiles-zsh

TEST_WIN_SAMPLE=${HOME}/bin/sounds/chimes3.mp3
TEST_LOSE_SAMPLE=${HOME}/bin/sounds/gong.mp3

function testbell {
  X=$?

  get_sounds

  if $(which alsaplayer 1> /dev/null); then
    # Linux
    PLAY=alsaplayer
  else
    # MacOSX
    PLAY=afplay
  fi

  if [ $X = 0 ] ; then
    ${PLAY} "${TEST_WIN_SAMPLE}" 1>/dev/null 2>/dev/null &
    disown
  else
    ${PLAY} "${TEST_LOSE_SAMPLE}" 1>/dev/null 2>/dev/null &
    disown
  fi
}

function get_sounds {
  # Make sure the output directory exists
  d=$(dirname ${TEST_WIN_SAMPLE})

  if [ ! -d ${d} ]; then
    mkdir -p ${d}
  fi

  if [ ! -e ${TEST_WIN_SAMPLE} ]; then
    wget -O ${TEST_WIN_SAMPLE} 'https://github.com/edse/puzzle/blob/master/audio/51710__bristolstories__u-chimes3.mp3?raw=true'
  fi

  if [ ! -e ${TEST_LOSE_SAMPLE} ]; then
    wget -O ${TEST_LOSE_SAMPLE} 'http://soundjax.com/reddo/51294%5EWINDGONG.mp3'
  fi
}

#####
