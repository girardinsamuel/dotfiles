# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zsh theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
source ~/.zsh/plugins.zsh

# Settings
# source ~/.zsh/settings.zsh

# External settings
source ~/.shell/external.sh

# Aliases
source ~/.shell/aliases.sh
alias reloadshell="source $HOME/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$HOME/.poetry/bin:$PATH"
