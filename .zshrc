# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
 
eval "$(fasd --init auto)"
eval "$(rbenv init -)"

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# make sure the editor is vim
export EDITOR=vim
export VISUAL=vim

# awesome for finding files
function findr() {
  find . -name "*$1*"
}

function omvim() {
  head -n $1 | tail -n 1 | xargs mvim
}

# quickly spellcheck a word by calling ie:
# spell piza
#
# you have to install the following
# sudo port install hunspell
# sudo port install hunspell-dict-en_US
function spell() {
  echo "$1" | hunspell -d en_US
}

alias be='bundle exec'
alias c='fasd_cd -d'

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

alias arduino="/Applications/Arduino.app/Contents/MacOS/Arduino"
