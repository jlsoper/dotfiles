#!/usr/local/bin/bash


cp  -p .Xresources $HOME
cp  -p .b*         $HOME
cp  -p .dblogin    $HOME
cp  -p .gitconfig  $HOME
cp  -p .nanorc     $HOME
cp  -p .vimrc      $HOME


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  -p .ssh/config $HOME/.ssh
fi

