# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# set -x

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSH_THEME="powerlevel10k/powerlevel10k"


# source /share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Adding Anaconda bin directory to PATH
export PATH=$PATH:/Users/ritwickdas/anaconda3/bin

# # Adding Anaconda condabin directory to PATH
# # export PATH=$PATH/Library/apache-jmeter-5.6.3/bin

# Adding Anaconda condabin directory to PATH
export PATH=$PATH:/Users/ritwickdas/anaconda3/condabin

# Adding .pyenv shims to PATH
export PATH=$PATH:/Users/ritwickdas/.pyenv/shims

# Adding .pyenv bin directory to PATH
export PATH=$PATH:/Users/ritwickdas/.pyenv/bin

# Adding JMeter bin directory to PATH
export PATH=$PATH:/Library/apache-jmeter-5.6.3/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Adding and Exporting Pyenv Root
export PYENV_ROOT="$HOME/.pyenv" 
export PATH="$PYENV_ROOT/bin:$PATH" 
eval "$(pyenv init -)"

# ---- Enable ZSH syntax highlighting ----
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

# ---- Zoxide (better cd) ----

eval "$(zoxide init zsh)"

# ---- Alias for z to override default cd ----
alias cd="z"

# ---- Alias for neovim ----
alias nv="nvim"

# ---- Aliases for arch ----
alias x86="$env /usr/bin/arch -x86_64 /bin/zsh ---login"
alias arm="$env /usr/bin/arch -arm64 /bin/zsh ---login"


# UTILITY FUNCTIONS
# ---- find which ports are open ----
source $HOME/.bashutils
