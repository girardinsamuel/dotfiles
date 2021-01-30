
# Servers
alias a.prod="ssh archibien.prod"
alias a.site="ssh archibien.site"
alias a.dev="ssh archibien.dev"
alias a.preprod="ssh archibien.preprod"
alias a.blog="ssh archibien.blog"

alias ip="curl icanhazip.com" # My public IP address
alias dc="docker-compose"
alias serve="python3 -m http.server"
alias addalias="nvim ~/.dotfiles/shell/aliases.sh"
alias s="spotify"
alias tb="nc termbin.com 9999"
alias n="nvim"
alias cc="echo '  Types of commits:
  * build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
  * ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
  * docs: Documentation only changes
  * feat: A new feature
  * fix: A bug fix
  * perf: A code change that improves performance
  * refactor: A code change that neither fixes a bug nor adds a feature
  * style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
  * test: Adding missing tests or correcting existing tests'"
alias c="clear"
alias g="git"
alias gs="g s"

# Js
alias watch="npm run watch"

# Directories
alias dotfiles="cd $DOTFILES"
alias repos="cd $HOME/repos"

# Improve coloration of common tools
alias cat="bat"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# cd to git root directory
alias cdgr='cd "$(git root)"'

# reload shell config
alias reloadshell="source $HOME/.zshrc"

# update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install -q
    )
}

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# Go up [n] directories
up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

# Fetch pull request
fpr() {
    if ! git rev-parse --git-dir > /dev/null 2>&1; then
        echo "error: fpr must be executed from within a git repository"
        return 1
    fi
    (
        cdgr
        if [ "$#" -eq 1 ]; then
            local repo="${PWD##*/}"
            local user="${1%%:*}"
            local branch="${1#*:}"
        elif [ "$#" -eq 2 ]; then
            local repo="${PWD##*/}"
            local user="${1}"
            local branch="${2}"
        elif [ "$#" -eq 3 ]; then
            local repo="${1}"
            local user="${2}"
            local branch="${3}"
        else
            echo "Usage: fpr [repo] username branch"
            return 1
        fi

        git fetch "git@github.com:${user}/${repo}" "${branch}:${user}/${branch}"
    )
}
