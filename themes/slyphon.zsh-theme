
# PROMPT='%B%(?..[%?] )%b%n@%U%m%u> '
# PS2='%_> '
# PS3='?# '
# PS4='+%N:%i> '
# RPROMPT='%{$fg[green]%}%~%{$reset_color%}%{$FG[051]%} $(git_prompt_info)%{$reset_color%}'

PROMPT=$'%{$fg_bold[green]%}%n@%m:%{$reset_color%}%{$fg[yellow]%}%~%{$reset_color%}      $(git_prompt_info)\
%{$FG[002]%}%D{[%Y%m%d-%H:%M:%S]}%{$fg_bold[green]%}%#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[051]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$FG[051]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# vim:ft=zsh
