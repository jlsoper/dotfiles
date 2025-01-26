#!/bin/bash


cp  --preserve=mode .b*         $HOME
cp  --preserve=mode .gitconfig  $HOME
cp  --preserve=mode .nanorc     $HOME


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  --preserve=mode .ssh/config $HOME/.ssh
fi

