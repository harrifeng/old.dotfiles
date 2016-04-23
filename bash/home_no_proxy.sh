# common setting------------------------------------------->
export EDITOR=emacs
export TERM=xterm-256color
export PATH=/usr/local/bin:$PATH

# git show branch------------------------------------------>
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# proxy setting-------------------------------------------->
# export http_proxy=http://proxy.sin.sap.corp:8080
# export https_proxy=http://proxy.sin.sap.corp:8080

# golang docker path setting------------------------------->
export GOPATH=~/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# java path setting Mac only------------------------------->
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
# export JAVA_HOME=$(/usr/libexec/java_home)

export NVM_DIR="/home/hfeng/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
