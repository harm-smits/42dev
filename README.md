# 42dev

This is my development container for whenever I need to use some fancy debugging tools in Codam (42). It has the following
debuggin tools available:

- gdb
- bash
- valgrind
- strace
- ltrace
- radare2

It will mount your documents folder by default so you can easily use that as your working tree. To build it, just pull the
container and then run it:

```sh
docker image build -t hsmits/42dev .
docker run -it -v $1:/home hsmits/42dev zsh
docker start -i -a $(docker ps -a | grep 42dev | head -1 | cut -f1 | awk '{print $1}')
```
