### bashrc ###

set showcmd

# Aliases
alias ls='ls -G'
alias l='ls -G'
alias ll='ls -alh'
alias cl='clear'
alias ip='ifconfig'

# IDK
alias idk="printf \"¯\_(ツ)_/¯\" | pbcopy && echo \"¯\_(ツ)_/¯ copied to clipboard\""

# Colors
export CLICOLOR=1
export LSCOLORS=DxFxCxDxcxegedabagacad
export TERM='xterm-color'
export PS1="\n\e[0;32m\]\u\e[0;37m\]@\H\[\e[0;37m\]: \[\e[1;33m\]\w\]\[\e[0;37m\]\]\$ \e[0;34m\]\T\e[0;37m\] \n> "
export PROMPT_COMMAND='echo -ne "\033]; ${PWD/#$HOME/~}\007"'

# Scripts
gwc () {
  wc -c "$@";
  gzip -c "$@" | wc -c;
}

jsgwc () {
  wc -c "$@";
  gzip -c "$@" | wc -c;
  uglifyjs --screw-ie8 "$@" | gzip -c | wc -c;
}
