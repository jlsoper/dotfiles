#  $HOME/.bash_profile

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

#  Visual Studo Code
#   export USER_VSC=$HOME/.config/vscode/user-data/User

#  Get the aliases and set PS1
if [ -f ~/.bashrc ]
then
  . ~/.bashrc
fi

alias sudo-su='sudo su -'

if [ -f ~/.bash_alias   ]; then . ~/.bash_alias   ; fi
if [ -f ~/.bash_archive ]; then . ~/.bash_archive ; fi
if [ -f ~/.bash_fcn     ]; then . ~/.bash_fcn     ; fi
if [ -f ~/.bash_pkg     ]; then . ~/.bash_pkg     ; fi

if [ -f ~/.bash_git     ]; then . ~/.bash_git     ; fi
if [ -f ~/.bash_py      ]; then . ~/.bash_py      ; fi

#  Setup the database login credentials
if [ -f ~/.dblogin ]
then
  . ~/.dblogin
fi

export PATH

