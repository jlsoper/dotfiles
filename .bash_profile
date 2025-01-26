#  $HOME/.bash_profile


PATH=~/scripts:$PATH

export LANG=C
export LESSHISTFILE=-

#  export GREP_COLOR='1;33'
export GREP_COLORS='mt=1;33'

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


export PATH

