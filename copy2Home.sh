#!/bin/bash


cp  -p .b* $HOME
cp  -p .dblogin $HOME
cp  -p .gitconfig $HOME
cp  -p .v* $HOME

if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  -p .ssh/config $HOME/.ssh
fi

