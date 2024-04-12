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

  # set cursor color
  printf '%b' '\e]12;cyan\a'

  umask 022

else
  PS1="(\[\033[1;31m\]\u\[\033[00m\]):\w>"



  alias pkg-update='apt  update'
  alias pkg-install='apt install'
  alias pkg-remove='apt  remove'
  alias pkg-upgrade='apt upgrade'

  pkg-upgrade1() { if [ -n "$1" ]; then apt --only-upgrade install "$1" ; else echo "usage: $FUNCNAME <package>" ; fi }


  ###  sudo group ( add / delete )
  adduser_sudo() { if [ -n "$1" ]; then usermod -aG sudo "$1" ; else echo "usage: $FUNCNAME <userID>" ; fi }  # touch ~/.sudo_as_admin_successful
  deluser_sudo() { if [ -n "$1" ]; then deluser "$1" sudo ; else echo "usage: $FUNCNAME <userID>" ; fi }

fi


### tweak for  io.elementary.terminal
if [ $0 != "-bash" ]
then
  if [ -f ~/.bash_profile ]; then . ~/.bash_profile ; fi
fi


# aliases (all users)
alias cd..='cd ..'
alias cls='clear'
alias cp='cp -iR'

alias del='rm -f'
alias deltree='rm -rf'


alias   dir='ls --group-directories-first -hl --color'
alias dir-b='ls --group-directories-first -1A --color'  # single column view
alias dir-d='ls --group-directories-first -dhl --color'  # directory listing with *
alias dir-f='ls -ALhlp --color | grep "/"'  # folder only view
alias dir-h='ls --group-directories-first -adhl --color .*'  # hidden files view
alias dir-p='ls --group-directories-first -Ahl --color | more'  # single page view
alias dir-s='ls -AhlrS --color'  # size view
alias dir-t='ls -Ahlrt --color'  # timestamp view
alias dir-w='ls --group-directories-first -Alx --color'  # wide view
alias  pdir='ls --group-directories-first -Ahl'  # printable view

alias dircmp='diff -r'


alias edit='nano'

alias fc='vimdiff'
alias fc-b='cmp'

alias md='mkdir'
alias mv='mv -i'

alias path='echo -e ${PATH//:/\\n}'

alias rd='rmdir'
alias rm='rm -i'


alias vi='vim -i NONE -u NONE'  # \r  -->  ^M
alias view='nano -v'

