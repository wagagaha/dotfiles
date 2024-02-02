# runtime status: https://fishshell.com/docs/current/cmds/status.html
# status is-login
# status is-interactive
# status is-block
# status is-breakpoint
# status is-command-substitution
# status is-no-job-control
# status is-full-job-control
# status is-interactive-job-control
# status current-command
# status current-commandline
# status filename
# status basename
# status dirname
# status fish-path
# status function
# status line-number
# status stack-trace
# status job-control CONTROL_TYPE
# status features
# status test-feature FEATURE

# >> set env variables
# orbstack

if status is-login
    source ~/.orbstack/shell/init.fish 2>/dev/null || :
end

if status is-interactive
    # Commands to run in interactive sessions can go here, --is-interactive means not
    # homebrew
    set -x HOMEBREW_DIR "$(brew --cellar)"

    # node
    fnm env --use-on-cd | source

    # starship
    set -x STARSHIP_CONFIG ~/.config/starship/config.toml
    starship init fish | source

    # golang
    set -x GOROOT /usr/local/go
    set -x GOPATH ~/go
    set -x PATH $PATH $GOROOT/bin $GOPATH/bin

    # bun
    set -x BUN_INSTALL ~/.bun
    set -x PATH $BUN_INSTALL/bin $PATH

    # Rust
    set -x PATH ~/.cargo/bin $PATH

    # alias
    for file in ~/.config/alias/*.fish
        source $file
    end

    # functions
    for file in ~/.config/fish/functions/custom*.fish
        source $file
    end
    set_homebrew_cn_mirror

    # git
    set -x GPG_TTY $(tty)
end


