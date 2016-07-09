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
export http_proxy=http://10.0.75.1:7777
export https_proxy=http://10.0.75.1:7777

# alias setting-------------------------------------------->
alias emacs='emacs -nw'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
