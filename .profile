#  $HOME/.profile

#  Correct PATH variable (Debian)
#  PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin


#  .NET telemetry setting
#  export DOTNET_CLI_TELEMETRY_OPTOUT=1

PATH=$PATH:~/scripts

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=C
export LESSHISTFILE=-
export GREP_COLOR='1;33'

#  Visual Studo Code
export USER_VSC=$HOME/.config/vscode/user-data/User

#  Get the aliases and set PS1
if [ -f ~/.ashrc ]
then
  . ~/.ashrc
fi

if [ -f ~/.alias  ]; then . ~/.alias  ; fi
if [ -f ~/.bash_fcn    ]; then . ~/.bash_fcn    ; fi
if [ -f ~/.bash_git    ]; then . ~/.bash_git    ; fi
if [ -f ~/.bash_java   ]; then . ~/.bash_java   ; fi
if [ -f ~/.bash_nodejs ]; then . ~/.bash_nodejs ; fi
if [ -f ~/.bash_py     ]; then . ~/.bash_py     ; fi

#  /etc/lsb-release (Ubuntu)
#if [ ! -f /etc/redhat-release ]
#then
#  eval "$(dircolors ~/.dir_colors)"
#fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

# XScreenSaver off
if [ -n "$DISPLAY" ]
then
  xset s off
  xset s noblank
  xset -dpms
fi

export PATH

