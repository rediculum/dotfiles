alias ll='ls -l'

[[ -f ~/.keychain/${HOSTNAME}-sh ]] && . ~/.keychain/${HOSTNAME}-sh

function keychain-add {
  keychain ~/.ssh/*
  . ~/.keychain/${HOSTNAME}-sh
  ssh-add
}
