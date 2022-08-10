#  $HOME/.bashrc

# clear aliases
unalias -a

if [ $HOME != /root ]
then
  if [ -n "$SSH_CLIENT" ]
  then
    PS1="(\[\033[1;32m\]ssh\[\033[00m\]):\w>"
  else
    if [ -n "$MINGW_PREFIX" ]
    then
      PS1="(\[\033[0;35m\]mintty\[\033[00m\]):\w>"
    else
      PS1="\w>"
    fi
  fi

  if [ $TERM != linux ]
  then
    PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
  fi

  umask 022

else
  PS1="(\[\033[1;31m\]\u\[\033[00m\]):\w>"

  alias dir='ls --group-directories-first -ahl --color'

  alias edit='nano'
  alias view='nano -v'


  alias pkg-update='apt update'
  alias pkg-install='apt install'
  alias pkg-remove='apt remove'  # purge
  alias pkg-upgrade='apt upgrade'

fi


# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -ir'
alias mv='mv -i'
alias rm='rm -i'

alias vi='vim -i NONE -u NONE'  # \r  -->  ^M

