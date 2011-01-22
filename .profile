# .profile

# Used to show status of current Git repository
function parse_git_deleted {
  [[ $(git status 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}
function parse_git_added {
  [[ $(git status 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}
function parse_git_modified {
  [[ $(git status 2> /dev/null | grep modified:) != "" ]] && echo "*"
}
function parse_git_dirty {
  echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

# Make prompt pretty, showing current Git branch
export PS1="\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[0;37m\]\$(parse_git_branch)\[\033[00m\]: "

# Add color to terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# PATH variable for use with MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# PATH for JRuby binaries
export PATH=$PATH:/Applications/jruby-1.5.0/bin

# PATH for FLEX SDK
export PATH=$PATH:/Applications/flex_sdk_4.1/bin

# Load RVM environment
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Aliases
alias vi='vim'
alias grep='grep --color=auto'
alias dus='du -hs'
alias df='df -h'

alias ls='ls -h'
alias ll='ls -l'
alias la='ls -a'
alias l='ls -CF'
alias lt='ls -ltr'

alias dunnet='emacs -batch -l dunnet'

# Open everything with MacVim
alias vim='mvim'

# Show color with rspec
alias rspec='rspec --color'
