#
# ~/.bashrc
#

export EDITOR=vim

bind '"\e[A": history-search-backward'
bind '"\eOA": history-previous-history'
export HISTCONTROL=ignoreboth

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If have plenty aliases put here
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export FLASK_DEBUG=1
export FLASK_ENV=development

PS1='[\u@\h \W]\$ '

# Always disable capslock
setxkbmap -option 'ctrl:nocaps'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Rbenv
eval "$(~/.rbenv/bin/rbenv init - bash)"

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Rust
. "$HOME/.cargo/env"
