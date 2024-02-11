#!/usr/bin/env bash

# start a new tmux session in the background
tmux new-session -d -s cedhr

# source the .env file
source ../.env || echo "No .env file found"

# read the hosts.env file line by line
while IFS= read -r host
do
  tmux new-window -n "$host"
  # split the wiindow into 5 panes (3 top, 2 bottom)
  tmux split-window -h
  tmux split-window -v
  tmux select-pane -t 0
  tmux split-window -v
  tmux select-pane -t 2
  tmux split-window -v
  # start an SSH session to the host in each pane
  for pane in $(tmux list-panes -F '#{pane_id}'); do
    tmux send-keys -t "$pane" "ssh $host" Enter
  done
done < ../hosts.env

tmux attach-session -d -t cedhr