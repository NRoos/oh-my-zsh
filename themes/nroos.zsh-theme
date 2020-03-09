# Clean and simple, heavily stripped down version of ys by Yad Smood
# MacOS  under ANSI colors.
# Colors: White, cyan, red, green and yellow.
# May 2019 Nico Roos

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}%{$reset_color%}"
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}x"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}o"

# Git info
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

PROMPT="\
%{$fg[cyan]%}[%*] \
%{$fg[white]%}\
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%}\
${hg_info}\
${git_info}\
%{$terminfo[bold]$fg[red]%} $ %{$reset_color%}"\
