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

  alias dir='ls -ahl --color'

  alias edit='nano'
  alias view='nano -v'


  alias pkg-update='pkg update'    # apt update
  alias pkg-install='pkg install'  # apt install
  alias pkg-remove='pkg  remove'   # apt remove
  alias pkg-upgrade='pkg upgrade'  # apt upgrade

fi


# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -iR'  # if source_file == directory, do NOT end with '/' character (OSX)
alias mv='mv -i'
alias rm='rm -i'

alias vi='vim -i NONE -u NONE'  # \r  -->  ^M

