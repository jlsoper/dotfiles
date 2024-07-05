#!/bin/bash


cp  -p .b*        $HOME
cp  -p .dblogin   $HOME
cp  -p .gitconfig $HOME
cp  -p .vimrc     $HOME

rm  -f $HOME/.cache
rm  -f $HOME/.config

sleep 2

ln -s $HOME/Library/Caches               $HOME/.cache
ln -s $HOME/Library/Application\ Support $HOME/.config


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  -p .ssh/config $HOME/.ssh
fi

