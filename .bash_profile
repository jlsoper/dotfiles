#  $HOME/.bash_profile

#  Correct PATH variable (Debian)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin


#  .NET telemetry setting
#  export DOTNET_CLI_TELEMETRY_OPTOUT=1

PATH=~/scripts:$PATH

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=C
export LESSHISTFILE=-

#  export GREP_COLOR='1;33'
export GREP_COLORS='mt=1;33'

#  ldd --version
if [ -f /lib/ld-musl-x86_64.so.1 ]
then
  export C_LIBRARY='musl libc'
else
  export C_LIBRARY='glibc'
fi

#  Visual Studo Code
export USER_VSC=$HOME/.config/vscode/user-data/User

#  Get the aliases and set PS1
### tweak for  io.elementary.terminal
if [ $0 == "-bash" ]
then
  if [ -f ~/.bashrc ]; then . ~/.bashrc ; fi
fi

alias sudo-su='sudo su -'


if [ -f ~/.bash_alias   ]; then . ~/.bash_alias   ; fi
if [ -f ~/.bash_archive ]; then . ~/.bash_archive ; fi
if [ -f ~/.bash_fcn     ]; then . ~/.bash_fcn     ; fi
if [ -f ~/.bash_pkg     ]; then . ~/.bash_pkg     ; fi
if [ -f ~/.bash_sysD    ]; then . ~/.bash_sysD    ; fi

if [ -f ~/.bash_git     ]; then . ~/.bash_git     ; fi
if [ -f ~/.bash_nodejs  ]; then . ~/.bash_nodejs  ; fi
if [ -f ~/.bash_py      ]; then . ~/.bash_py      ; fi

#  /etc/lsb-release (Ubuntu)
if [ ! -f /etc/redhat-release ]
then
  eval "$(dircolors ~/.dir_colors)"
fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

#  Wifi ssid
if [ -f /sbin/iwgetid ]; then export WIFI=$(iwgetid -r) ; fi


export PATH

