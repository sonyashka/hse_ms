#!/bni/bash

echo "Enter command"
read $command

eval $command &
echo "PID $!"