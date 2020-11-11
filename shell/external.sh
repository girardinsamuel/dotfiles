# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Define global cookiecutter configuration
export COOKIECUTTER_CONFIG=/Users/samuel/.cookiecutter.yaml

# Configure pyenv
eval "$(pyenv init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# TODO: verify if needed
# add code command for VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
