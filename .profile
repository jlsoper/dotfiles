#  $HOME/.profile

#  Correct PATH variable (Debian)
#  PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin


#  .NET telemetry setting
#  export DOTNET_CLI_TELEMETRY_OPTOUT=1

PATH=~/scripts:$PATH

#  X Window System
if [ "$(tty)" = "/dev/tty1" ]
then
  echo "Starting an X session.."
  echo
  startx
fi

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=en_US.UTF-8
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
if [ -f ~/.ash_golang  ]; then . ~/.ash_golang  ; fi
if [ -f ~/.ash_py      ]; then . ~/.ash_py      ; fi

#  Alpine - OpenRC
if [ -d /etc/apk ]
then
  alias poweroff='doas poweroff'
  alias reboot='doas reboot'
fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

#  Wifi ssid
if [ -f /usr/sbin/iwgetid ]; then export WIFI=$(iwgetid -r) ; fi


export PATH

