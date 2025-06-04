#!/bin/sh

if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="bin,nvim,tmux,zsh,alacritty,ghostty"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/dev/dotfiles
fi

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder -t $HOME
    stow $folder -t $HOME
done
popd

