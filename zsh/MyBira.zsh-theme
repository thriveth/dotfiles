# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%} %~ %{$reset_color%}'
local rvm_ruby=''
local trunc_prompt='%{$terminfo[bold]$fg[blue]%} %50<...<%~%<<% / %{$reset_color%}'
if which rvm-prompt &> /dev/null; then
  rvm_ruby='%{$fg[red]%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm_ruby='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
#local git_branch='$(git_prompt_info)%{$reset_color%}'
local git_branch='%{$fg[yelllow]%}$(git_super_status)%{$reset_color%}'

PROMPT=" 
╭─${user_host}  ${trunc_prompt} ${rvm_ruby}
╰──$B⦿ %b " 
#%B𝄆%𝄞b"
RPS1="  ${return_code} ${git_branch}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}‹∓ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[yellow]%}›%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[yellow]%}+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}✔%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$terminfo[bold]$fg[white]%}…%{$reset_color%}"
