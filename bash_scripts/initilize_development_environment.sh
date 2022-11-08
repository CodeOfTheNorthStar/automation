#! /bin/bash

# update the system
sudo apt update && sudo apt upgrade -y;

#install pyenv
sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev ;


git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src

current_shell=$SHELL
if [ $current_shell == "/bin/bash" ];then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc

elif [ $current_shell == "/bin/zsh" ];then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi
# go back home ~!
cd ~
echo "*** *** *** *** *** *** *** *** *** ***"
echo "Done with pyenv, you may wanna restart thy shell 'source ~/.<your profile>' ~!"

# restat the shell
source $SHELL

# everything was fine and dandy
exit 0

