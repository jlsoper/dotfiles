#  $HOME/.bash_profile

#  OSX stop console message
export BASH_SILENCE_DEPRECATION_WARNING=1


PATH=$PATH:~/scripts

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=C
export GREP_COLOR='1;33'

#  Get the aliases and set PS1
if [ -f ~/.bashrc ]
then
  . ~/.bashrc
fi

if [ -f ~/.bash_alias ]; then . ~/.bash_alias ; fi
if [ -f ~/.bash_fcn   ]; then . ~/.bash_fcn   ; fi
if [ -f ~/.bash_git   ]; then . ~/.bash_git   ; fi
if [ -f ~/.bash_py    ]; then . ~/.bash_py    ; fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

export PATH

