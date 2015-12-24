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
export http_proxy=http://proxy.sin.sap.corp:8080
export https_proxy=http://proxy.sin.sap.corp:8080

# jam rails setting---------------------------------------->
export TZ="US/Pacific"
export JAM_WEBSERVER_NAME="localhost:6009"
export TAG_WITH_I18N_ORIGIN_OFF=true
