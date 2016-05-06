# common setting------------------------------------------->
export EDITOR=emacs
export TERM=xterm-256color
export PATH=/usr/local/bin:$PATH

# git show branch------------------------------------------>
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@ \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# golang docker path setting------------------------------->
export GOPATH=~/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# java path setting---------------------------------------->
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export JAVA_HOME=/usr/lib/jvm/java-7-oracle
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
    export JAVA_HOME=$(/usr/libexec/java_home)
else
    # freebsd, win32, msys, cygwin, etc
fi

# proxy setting-------------------------------------------->
export http_proxy=http://proxy.sin.sap.corp:8080
export https_proxy=http://proxy.sin.sap.corp:8080
