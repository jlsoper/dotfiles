#  $HOME/.bash_profile

#  OSX stop console message
export BASH_SILENCE_DEPRECATION_WARNING=1


#  .NET telemetry setting
#  export DOTNET_CLI_TELEMETRY_OPTOUT=1

PATH=$PATH:~/scripts

#  Linux
if [ ! -d ~/.config ]; then mkdir ~/.config ; fi

#  Database settings
#  export DB_HOME=/opt/hsqldb
#  PATH=$PATH:$DB_HOME/bin

export LANG=C
export LESSHISTFILE=-
export GREP_COLOR='1;33'

#  Visual Studo Code
export USER_VSC=$HOME/.config/vscode/user-data/User

export SUDO_PS1="(\[\033[1;31m\]\u\[\033[00m\]):\w>"

#  Get the aliases and set PS1
if [ -f ~/.bashrc ]
then
  . ~/.bashrc
fi

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

