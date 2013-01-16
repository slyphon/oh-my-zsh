
username_bit='%(!,%{$fg_bold[red]%}ROOT,%{$fg[green]%}%n)%{$reset_color%}'
at_host_bit='%{$fg_bold[green]%}@%m:%{$reset_color%}'

#PROMPT='%{$fg_bold[green]%}%n@%m:%{$reset_color%}'       # host info and ':'
PROMPT="${username_bit}${at_host_bit}"                    # host info and ':'
PROMPT="${PROMPT}%{$fg[yellow]%}%~%{$reset_color%}"       # directory info
PROMPT="${PROMPT}
"                                                         # spacing and git info with newline
PROMPT="${PROMPT}%{$FG[002]%}%D{[%Y%m%d-%H:%M:%S]}"       # date

root_or_user_char="%(!.#.-❯)"

last_cmd_success='%(?,,%{$fg_bold[red]%})'

PROMPT="${PROMPT}${last_cmd_success}${root_or_user_char}%{$reset_color%} "

RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[051]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$FG[051]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

unset root_or_user_char last_cmd_success username_bit at_host_bit

# vim:ft=zsh
