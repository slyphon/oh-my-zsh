function _jds_prompt_hostname() {
	local name
	name="$(uname -n)"
	case "${name}" in
		weasel) printf "" ;;
		*) printf "$name" ;;
	esac
}


username_bit='%(!,%{$fg_bold[red]%}ROOT,%{$fg[green]%}%n)%{$reset_color%}' # show either our name or 'ROOT'
at_host_bit='%{$fg_bold[green]%}@$(_jds_prompt_hostname)%m:%{$reset_color%}'                      # show host info

function _jds_prompt_klist_status() {
	klist -t &>/dev/null || echo "%{$fg[red]%}[K]%{$reset_color%}";
}

PROMPT="${username_bit}${at_host_bit}"                    # host info and ':'
PROMPT+="%{$fg[yellow]%}%~%{$reset_color%}"       				# directory info
PROMPT+="
"                                                         # newline
#PROMPT+="%{$FG[002]%}%D{[%Y%m%d-%H:%M:%S]}"       				# date
PROMPT+="%{$FG[002]%}%D{[%H:%M:%S]}"       							  # time only

root_or_user_char="%(!.#.-❯)"                             # promptchar is different if we're rootful

last_cmd_success='%(?,,%{$fg_bold[red]%})'                # also colored red if last cmd was a fail

PROMPT+="${last_cmd_success}${root_or_user_char}%{$reset_color%} "

RPROMPT='$(git_prompt_info) $(_jds_prompt_klist_status)'  # add kinit status reminder

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[051]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$FG[051]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

unset root_or_user_char last_cmd_success username_bit at_host_bit

# vim:ft=zsh
