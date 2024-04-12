#!/bin/bash


/usr/bin/cp  --preserve=mode .b*         $HOME
/usr/bin/cp  --preserve=mode .dir_colors $HOME
/usr/bin/cp  --preserve=mode .nanorc     $HOME


if [ ! -d ~/scripts ]
then
  /usr/bin/cp  -R scripts $HOME
else
  /usr/bin/cp  --preserve=mode scripts/pkg-upgrade $HOME/scripts
fi

