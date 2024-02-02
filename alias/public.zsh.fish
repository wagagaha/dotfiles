# >> alias
# main
alias cat="bat"
alias ls="eza --icons"
alias ll="ls -l"
alias lla="ls -al"
alias rm="rm -v -i"
alias cp="cp -v"

# git
alias gcm="git commit -m"
alias gam="git commit -am"
alias gck="git checkout"
alias ga="git add"

# update
alias up="bash ~/.config/plum/rime-install iDvel/rime-ice:others/recipes/full && brew upgrade && brew cleanup"

# >> clean
# Delete Apple System Logs
alias dasl="sudo rm -rf /private/var/log/asl/*.asl"

# Delete DerivedData
alias ded="rm -rf ~/Library/Developer/Xcode/DerivedData"

# Flush SPM caches
alias dspm="rm -rf ~/Library/Caches/org.swift.swiftpm/;rm -rf ~/Library/org.swift.swiftpm"

# Flush Directory Service cache
alias flushdns="dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Rebuild Launch Services database
alias rlsd="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user"

alias clean="dasl &&\
  ded &&\
  flushdns &&\
  dspm"

# >> Others
# local ip
alias localip="ipconfig getifaddr en0"
