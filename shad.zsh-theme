#ZSH_THEME_GIT_PROMPT_PREFIX=" [%{$fg[green]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}%{$reset_color%}]"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}|%{$FG[202]%}✘"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}|%{$FG[040]%}✔"

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[red]%}#%{$reset_color%}"; else echo $; fi
}

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%{$fg_bold[blue]%}%~%{$reset_color%} $(git_super_status)
%{$fg[green]%}%*%{$reset_color%} [%{%B%F{yellow}%}%!%{%f%k%b%}] %_$(prompt_char) '
