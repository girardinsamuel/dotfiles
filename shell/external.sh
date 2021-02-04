# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=false

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Define global cookiecutter configuration
export COOKIECUTTER_CONFIG=/Users/samuel/.cookiecutter.yaml

# Pyenv initialization
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# TODO: check usage
# eval "$(pyenv virtualenv-init -)" 
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Configure nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Configure poetry
export PATH="$HOME/.poetry/bin:$PATH"
