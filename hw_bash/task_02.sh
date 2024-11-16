#!/bin/bash

echo "Starting PATH:"
tr ':' '\n' <<< "$PATH"
echo

if [ -d $1 ]; then
    PATH="$PATH:$1"
    echo "New PATH:"
    tr ':' '\n' <<< "$PATH"
    echo
else
    echo "Directory $1 is not found."
fi
# данные изменения являются временными, так как мы изменили только рантайм значение переменной,
# для перманентного изменения необходимо перезаписать файл, в котором хранится значение

# ниже приведена команда обновления файла .bashrc для перманентного расширения PATH
# (! выполнять строго осторожно под своим пользователем)
# echo -e "$(cat /home/sonyashka/.bashrc)\nexport PATH=\$PATH:$1" > /home/sonyashka/.bashrc
# останется только перезапустить консоль командой source .bashrc
