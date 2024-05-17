#!/bin/bash


cp  -p .b*        $HOME
cp  -p .dblogin   $HOME
cp  -p .gitconfig $HOME
cp  -p .vimrc     $HOME

cp  -iR  .cache   $HOME
cp  -iR  .config  $HOME


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  -p .ssh/config $HOME/.ssh
fi

