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


  alias pkg-update='nala update'    # apt update
  alias pkg-install='nala install'  # apt install
  alias pkg-remove='nala  remove'   # apt remove
  alias pkg-upgrade='nala upgrade'  # apt upgrade

  pkg-upgrade1() { if [ -n "$1" ]; then apt --only-upgrade install "$1" ; else echo "usage: $FUNCNAME <package>" ; fi }

fi


# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -iR'
alias mv='mv -i'
alias rm='rm -i'

alias samba-adduser='smbpasswd -a'
alias samba-listuser='pdbedit -L'
alias samba-test='testparm'

alias vi='vim -i NONE -u NONE'  # \r  -->  ^M

