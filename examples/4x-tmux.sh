#!/bin/bash

tmux new-session -d
tmux split-window
tmux split-window 
tmux split-window 
tmux set-option -g synchronize-panes on
tmux set-option -g allow-rename off
tmux select-layout tiled
tmux attach-session
