#  $HOME/.bashrc

# clear aliases
unalias -a

if [ $HOME == /root ]
then
  PS1="(\[\033[1;31m\]\u\[\033[00m\]):\w>"
else
  if [ -n "$SSH_CLIENT" ]
  then
    PS1="(\[\033[1;32m\]ssh\[\033[00m\]):\w>"
  else
    PS1="\w>"
  fi

  if [ $TERM != linux ]
  then
    PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}\007"'
  fi

  umask 022
  . ~/.bash_alias
  . ~/.bash_git
fi

#  Get the defined functions
if [ -f ~/.bash_fcn ]
then
  . ~/.bash_fcn
fi

# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -ir'
alias edit='vim -i NONE'
alias mv='mv -i'
alias rm='rm -i'
alias samba-adduser='smbpasswd -a'
alias samba-listuser='pdbedit -L'
alias samba-test='testparm'
alias vi='vim -i NONE -u NONE'

