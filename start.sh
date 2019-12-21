docker start -i -a $(docker ps -a | grep 42dev | head -1 | cut -f1 | awk '{print $1}')
