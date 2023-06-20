#!/bin/bash


cp  --preserve=mode .X* $HOME
cp  --preserve=mode .b* $HOME
cp  --preserve=mode .d* $HOME
cp  --preserve=mode .gitconfig $HOME
cp  --preserve=mode .n* $HOME
cp  --preserve=mode .v* $HOME
cp  --preserve=mode .x* $HOME


if [ ! -d ~/.ssh ]
then
  cp -R .ssh $HOME
else
  cp  --preserve=mode .ssh/config $HOME/.ssh
fi

