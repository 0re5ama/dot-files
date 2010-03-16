# .profile

# Change prompt
export PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

# Add color to terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# PATH variable for use with MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# PATH for JRuby binaries
export PATH=$PATH:/Applications/jruby-1.4.0/bin

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

