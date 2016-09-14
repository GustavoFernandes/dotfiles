local ret_status="%(?:%{$fg[green]%}$:%{$fg[red]%}$%s)"

PROMPT="%{$fg[cyan]%}%c $(git_prompt_info) %{$reset_color%}${ret_status}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}) %{$fg[yellow]%}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}) "
