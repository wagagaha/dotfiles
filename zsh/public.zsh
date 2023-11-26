# startship
export STARSHIP_CONFIG="$HOME/.config/starship/zsh.toml"
eval "$(starship init zsh)"

# >> alias
# main
alias cat="bat"
alias ls="eza --icons"
alias ll="ls -l"
alias lla="ls -al"
alias rm="rm -v -i"
alias cp="cp -v"

# git
alias gcm='export GPG_TTY=$(tty) && git commit -m'
alias gam="export GPG_TTY=$(tty) && git commit -am"
alias gck='git checkout'
alias ga="git add"

# >> clean
# Delete Apple System Logs
alias dasl="sudo rm -rf /private/var/log/asl/*.asl"

# Delete DerivedData
alias ded="rm -rf $HOME/Library/Developer/Xcode/DerivedData"

# Flush SPM caches
alias dspm="rm -rf $HOME/Library/Caches/org.swift.swiftpm/;rm -rf $HOME/Library/org.swift.swiftpm"

# Flush Directory Service cache
alias flushdns="dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Recursively delete `.DS_Store` files
alias dsstore="find . -name '*.DS_Store' -type f -ls -delete"

alias clean="dasl && ded && flushdns && dspm && dsstore"

# >> Others
# local ip
alias localip="ipconfig getifaddr en0"

