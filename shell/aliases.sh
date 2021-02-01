
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

# reload shell config
alias reloadshell="source $HOME/.zshrc"

# add alias quickly
alias al="vim ~/.dotfiles/shell/aliases.sh"

# sync settings quickly
alias sync="cd ~/.dotfiles && g a && g cm "sync" && g push && echo -e '\e[32mdotfiles synced\!' && cd -"

# kill service running on given port
alias kp3="lsof -i tcp:3000"
alias kp8="lsof -i tcp:8000"

# database services
alias runmysql="mysql.server start"
alias runpostgres="pg_ctl -D /usr/local/var/postgres start"
alias mysql="mysql -uroot"
alias ppsql="psql -U craggeek -d postgres"
