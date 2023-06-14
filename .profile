#  $HOME/.profile

#  Correct PATH variable (Debian)
#  PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin


#  .NET telemetry setting
#  export DOTNET_CLI_TELEMETRY_OPTOUT=1

PATH=$PATH:~/scripts

#  X Window System
if [ "$(tty)" = "/dev/tty3" ]
then
  echo "Starting an X session.."
  echo
  startx
fi

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

alias doas-su='doas su -'


if [ -f ~/.ash_alias   ]; then . ~/.ash_alias   ; fi
if [ -f ~/.ash_archive ]; then . ~/.ash_archive ; fi
if [ -f ~/.ash_fcn     ]; then . ~/.ash_fcn     ; fi
if [ -f ~/.ash_pkg     ]; then . ~/.ash_pkg     ; fi

if [ -f ~/.ash_git     ]; then . ~/.ash_git     ; fi
if [ -f ~/.ash_nodejs  ]; then . ~/.ash_nodejs  ; fi
if [ -f ~/.ash_py      ]; then . ~/.ash_py      ; fi

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

