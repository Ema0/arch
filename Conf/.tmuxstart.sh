#!/bin/zsh

DEFAULT="default"
FROST="frost"

case $1 in
    default)    urxvtc -e zsh -c "tmux -q has-session && exec tmux attach-session -d || exec tmux new-session -n $USER -s $USER@$HOST";;
    frost)    urxvtc -name frost -e zsh -c "tmux -q has-session && exec tmux attach-session -d || exec tmux new-session -n $USER -s $USER@$HOST";;
esac
