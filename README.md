# 42dev

This is my development container for whenever I need to use some fancy debugging tools in Codam (42). It has the following
debuggin tools available:

- gdb
- bash
- valgrind
- strace
- ltrace
- radare2

It will mount your documents folder by default so you can easily use that as your working tree.

Add the following to your zsh to use the container with ease

```sh
alias dev-install="docker pull harmsmits/42dev"
alias dev="docker start -i -a $(docker ps -a | grep harmsmits/42dev | head -1 | cut -f1 | awk '{print $1}')"
alias dev-spawn="docker run -it -v ~/Documents:/home harmsmits/42dev zsh"
```

To build it, just pull the container and then run it:

```sh
docker image build -t harmsmits/42dev .
docker run -it -v $1:/home harmsmits/42dev zsh
docker start -i -a $(docker ps -a | grep 42dev | head -1 | cut -f1 | awk '{print $1}')
```
