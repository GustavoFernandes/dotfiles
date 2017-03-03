local curr_dir="%{$fg_bold[cyan]%}%~ "
local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})$ "

PROMPT='${curr_dir}$(git_prompt_info)${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[red]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
