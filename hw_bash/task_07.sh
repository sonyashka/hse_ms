#!/bin/bash

shopt -s expand_aliases
alias ll="ls -la"
ll

# для добавления глобального алиаса можно сделать следующее
# echo "alias ll='ls -la'" > /home/sonyashka/aliases
# echo -e "$(cat /home/sonyashka/.bashrc)\nif [ -f aliases ]; then\n. myaliases\nfi" > /home/sonyashka/.bashrc
# source .bashrc

cd ..
cd $(compgen -A directory hw_)
ll