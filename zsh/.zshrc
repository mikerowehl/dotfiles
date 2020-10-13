export PATH=/usr/local/bin:/usr/local/sbin:$PATH:~/bin:/usr/local/opt/libpq/bin:~/projects/go/bin
export PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~%f%b %# '

alias vi=nvim
alias vim=nvim
alias jpp='python -mjson.tool'

export EDITOR=nvim

setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

# Config for git completion and prompt info
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}%u%c[%b]%r%f'
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
