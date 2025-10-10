
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/thinh/.lmstudio/bin"
# End of LM Studio CLI section


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%n@%m %1~ ${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '(%b)'

