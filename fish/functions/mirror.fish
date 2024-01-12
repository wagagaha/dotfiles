function setcnmirror
  # set tuna mirror for brew
  set -x HOMEBREW_API_DOMAIN "https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
  set -x HOMEBREW_BREW_GIT_REMOTE "https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
  set -x HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"

  # set tuna node mirror for fnm
  set -x FNM_NODE_DIST_MIRROR https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/

  # set cn mirror for golang
  go env -w GOPROXY=https://goproxy.cn,direct

  # set tuna python mirror for pdm
  pdm config pypi.url https://pypi.tuna.tsinghua.edu.cn/simple
end

function unsetcnmirror
  # unset tuna mirror for brew
  set -e HOMEBREW_API_DOMAIN
  set -e HOMEBREW_BREW_GIT_REMOTE
  set -e HOMEBREW_PIP_INDEX_URL

  # unset tuna node mirror for fnm
  set -e FNM_NODE_DIST_MIRROR

  # unset cn mirror for golang
  go env -w GOPROXY=https://goproxy.io,direct

  # unset tuna mirror for pdm
  pdm config pypi.url https://pypi.org/simple
end
