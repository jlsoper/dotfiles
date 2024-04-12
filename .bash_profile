#  $HOME/.bash_profile

#  Correct PATH variable (Debian)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin


PATH=~/scripts:$PATH

export LANG=C
export LESSHISTFILE=-
export GREP_COLOR='1;33'


#  Get the aliases and set PS1
### tweak for  io.elementary.terminal
if [ $0 == "-bash" ]
then
  if [ -f ~/.bashrc ]; then . ~/.bashrc ; fi
fi


#  /etc/lsb-release (Ubuntu)
if [ ! -f /etc/redhat-release ]
then
  eval "$(dircolors ~/.dir_colors)"
fi


#  Wifi ssid
if [ -f /sbin/iwgetid ]; then export WIFI=$(iwgetid -r) ; fi

export PATH

