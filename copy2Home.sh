#!/bin/ash


cp  .Xresources $HOME
cp  .a*         $HOME
cp  .dblogin    $HOME
cp  .gitconfig  $HOME
cp  .nanorc     $HOME
cp  .profile    $HOME
cp  .vimrc      $HOME


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  .ssh/config $HOME/.ssh
fi

