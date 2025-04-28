# Default editor
export EDITOR=vim
export PATH=$PATH:~/go/bin

# TMUX shortcuts
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"
alias tmuxa="tmux a -t"
alias tmuxn="tmux new -s"
alias tmuxd="tmux detach"

# General aliases
alias vim="nvim"
alias :q="exit"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -la"
alias less="less -R"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ip="ip --color=auto"

# Prompt
PS1='\[\e[0m\][\[\e[0;36m\]\T\[\e[0m\]]\[\e[0m\][\[\e[0;33m\]\h\[\e[0m\]]\[\e[0m\][\[\e[0;32m\]\w\[\e[0m\]]\[\e[0m\] '

# Hacking aliases
alias burl="curl --proxy http://127.0.0.1:8080/ --user-agent burl/`curl -V | head -n1 | awk '{print $2'}` --insecure"

# ===============
# HACKING HELPERS
# ===============
function nmap_ips() {
    cat $1 | grep for | cut -d" " -f5
}

function nmap_ports() {
    cat $1 | awk '/^[0-9]/ {print $1}' | cut -d"/" -f1 | paste -s -d ','
}

# =======
# HELPERS
# =======

# Copy file to clipboard
function clip() {
    cat $1 | xclip -selection clipboard
}

# Open all modified files in vim tabs
function vimod() {
    vim -p $(git status -suall | awk '{print $2}')
}

