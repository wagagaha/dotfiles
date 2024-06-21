set -g successed (set_color green)"successed"(set_color normal)
set -g failed (set_color red)"failed"(set_color normal)

function highlight --description "Print text in a specificed color"
    set -l text $argv[1]
    set_color yellow
    echo $text
    set_color normal
end


# set tuna mirror for brew
function set_homebrew_cn_mirror
    set -gx HOMEBREW_INSTALL_FROM_API 1
    set -gx HOMEBREW_API_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
    set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
    set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
    set -gx HOMEBREW_PIP_INDEX_URL "https://pypi.tuna.tsinghua.edu.cn/simple"
    set -gx HOMEBREW_CORE_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
    echo "set" (highlight [homebrew]) "with tuna mirror $successed"
end

# set cn mirror for rustup
function set_rust_cn_mirror
    set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
    set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"
    echo "set" (highlight [rustup]) "with rsproxy mirror $successed"
end

# set cn mirror for golang
function set_golang_cn_mirror
    go env -w GOPROXY=https://goproxy.cn,direct
    echo "set" (highlight [golang]) "with goproxy mirror $successed"
end

# set tuna python mirror for pdm
function set_pdm_cn_mirror
    pdm config pypi.url https://pypi.tuna.tsinghua.edu.cn/simple
    echo "set" (highlight [pdm]) "with tuna mirror $successed"
end

function set_pnpm_cn_mirror
end


# set tuna mirror for fnm
function set_fnm_cn_mirror
    set -gx FNM_NODE_DIST_MIRROR https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/
    echo "set" (highlight [fnm]) "with tuna mirror $successed"
end

# unset tuna node mirror for fnm
function unset_fnm_cn_mirror
    set -e FNM_NODE_DIST_MIRROR
end

# unset cn mirror for golang
function unset_golang_cn_mirror
    go env -w GOPROXY=https://goproxy.io,direct
end

# unset tuna mirror for brew
function unset_homebrew_cn_mirror
    set -e HOMEBREW_INSTALL_FROM_API
    set -e HOMEBREW_API_DOMAIN
    set -e HOMEBREW_BOTTLE_DOMAIN
    set -e HOMEBREW_BREW_GIT_REMOTE
    set -e HOMEBREW_PIP_INDEX_URL
    set -e HOMEBREW_CORE_GIT_REMOTE
end

# unset tuna mirror for pdm
function unset_pdm_cn_mirror
    pdm config pypi.url https://pypi.org/simple
end
