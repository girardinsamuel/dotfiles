# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Define global cookiecutter configuration
export COOKIECUTTER_CONFIG=/Users/samuel/.cookiecutter.yaml

# Configure pyenv
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Configure nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Configure poetry
export PATH="$HOME/.poetry/bin:$PATH"