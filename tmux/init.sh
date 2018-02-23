#!/bin/zsh
tmux new-session -s 'overlay' -c ~ -n 'overlay'
tmux new-session -s 'webapp' -c ~/Sites/swu/web-app -n 'run-app'
tmux new-window -s 'webapp' -c ~/Sites/swu/web-app -n 'working'
# tmux new-session -d 'static' -c ~/Sites/swu/static-app -n 'run-app'
# tmux new-window -c ~/Sites/swu/static-app -n 'working'
# tmux attach -t webapp
# tmux detach
