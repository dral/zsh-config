# noj.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012

# color vars

eval my_gray='%{$fg[cyan]%}'
eval my_orange='%{$fg[yellow]%}'
eval my_blue='%{$fg[blue]%}'
eval my_purple='%{$fg[magenta]%}'
eval my_lightblue='%{$fg_bold[blue]%}'
eval my_red='%{$fg[red]%}'

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$my_red%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$my_blue%~\
$(git_prompt_info) \
$my_purple%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

# right prompt
RPROMPT='$my_gray%n@%m%{$reset_color%}% $my_gray|$my_purple%*$my_gray|%{$reset_color%}'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$my_lightblue(branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$my_lightblue)%{$reset_color%}"
