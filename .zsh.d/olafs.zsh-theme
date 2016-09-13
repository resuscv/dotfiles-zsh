# -----------------------------------------------------------------------------
#          FILE: olafs.zsh-theme
#   DESCRIPTION: oh-my-zsh theme file, based on dogenpunk by Matthew Nelson.
#                then based on smt.zsh-theme
#        AUTHOR: Olaf TNSB
#       VERSION: 0.1
#    SCREENSHOT: coming soon
# -----------------------------------------------------------------------------

export LS_COLORS=$(grep -v -e '^#' -e '^$' ~/.zsh.d/colour.scheme | tr '\n' ':')

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%} "

function prompt_char() {
  echo "%{$fg[cyan]%}x%{$reset_color%}"
}

PROMPT='
%{$fg[blue]%}%m%{$reset_color%} %{$fg[cyan]%}%~ %{$reset_color%}
%{$fg[red]%}%!%{$reset_color%} $(prompt_char) : '
