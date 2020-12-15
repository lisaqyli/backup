export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

# misc aliases
alias less='less -r'
alias grep='grep --color=auto'
alias tree='tree -ACFr'
alias grind='valgrind --tool=memcheck --leak-check=full --show-reachable=yes --read-var-info=yes'
alias browse='nautilus --no-desktop "$PWD" &>/dev/null &!'
alias socks='ssh -fND'
alias ping-scan='nmap -sP -PE -R'
alias port-scan='nmap -p'
alias la='ls -a'

#git aliases
gitdifftig() {
  git diff $1 | tig
}

alias g='git'
alias gi='git init'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
alias gac='git add -A; git commit'
alias gf='git fetch --prune'
alias gr='git rebase'
alias grm='git rebase origin/master'
alias gc='git commit'
alias gb='git branch'
alias gk='git checkout'
alias gkm='git checkout master'
alias gkd='git checkout develop'
alias gkb='git checkout -b'
alias gds='git diff --stat HEAD~1'
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gm='git merge'
alias gmm='git merge --no-ff'
alias gd=gitdifftig
alias gl='git log | tig'
alias gg='git log --graph --oneline --all'
alias gda='git branch | grep -v "master" | xargs git branch -D'

#other stuff
alias dka="docker kill $(docker ps -q)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
