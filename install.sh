sudo yum install -y vim
sudo yum install -y gcc-c++

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install 4
npm install -g jshint

ln -sf ~/dotfile/bash_profile ~/.bash_profile
ln -sf ~/dotfile/vimrc ~/.vimrc
ln -sf ~/dotfile/editorconfig ~/.editorconfig
