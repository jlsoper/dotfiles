#  $HOME/.bash_profile

#  Correct PATH variable (Debian)
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


#  Java settings (sudo ln -s java-8-openjdk-amd64 java-openjdk)
export CLASSPATH=.:$HOME/scripts/jar/*:$HOME/scripts/class
export JAVA_HOME=/usr/lib/jvm/java-openjdk

PATH=$JAVA_HOME/bin:$PATH:~/scripts

#  java $JVM_DEBUG
export JVM_DEBUG_PORT=8000
export JVM_DEBUG=-agentlib:jdwp=transport=dt_socket,address=$JVM_DEBUG_PORT,server=y,suspend=y
#  export JVM_DEBUG='-Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=y'

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

# XScreenSaver off
if [ -n "$DISPLAY" ]
then
  xset s off
  xset s noblank
  xset -dpms
fi

export PATH

