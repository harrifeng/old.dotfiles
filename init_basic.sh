echo $PWD
# Add bashrc
rm -rf ~/.bashrc
ln -s $PWD/bash/basic/noproxy.sh ~/.bashrc
source ~/.bashrc

# Add git config
rm -rf ~/.gitconfig
ln -s $PWD/git/gitconfig ~/.gitconfig

# Add tmux config
rm -rf ~/.tmux.conf
ln -s $PWD/tmux/old/tmux.conf ~/.tmux.conf

# Add emacs config
git clone git@github.com:harrifeng/dotemacsd
rm -rf ~/.emacs.d
ln -s $PWD/dotemacsd ~/.emacs.d
cd ~/.emacs.d
$(tail -n1 ~/.emacs.d/README.md)
