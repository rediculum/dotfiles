export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'

export HISTTIMEFORMAT="%d.%b/%H:%M:%S "
export HISTSIZE=1000000

[[ -f ~/.keychain/${HOSTNAME}-sh ]] && . ~/.keychain/${HOSTNAME}-sh

function keychain-add {
  keychain ~/.ssh/*
  . ~/.keychain/${HOSTNAME}-sh
  ssh-add
}
