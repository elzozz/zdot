# Editors

if [[ -z "$EDITOR" ]]; then
  export EDITOR='nvim'
fi
if [[ -z "$VISUAL" ]]; then
  export VISUAL='nvim'
fi

# Lang
#
if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# Export .config dir. For some reason WSL Ubuntu does not have it...
#
export XDG_CONFIG_HOME=$HOME/.config/

# set paths for zsh
path=(
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  /opt/nvim-linux64/bin/
  /usr/local/go/bin/
  $path
)

# Start Starship
eval "$(starship init zsh)"

# ZSH Custom configs
#
setopt correct
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove #the older one
setopt autocd                                                   # if only directory path is entered, cd #there.
setopt inc_append_history                                       # save commands are added to the history #immediately, otherwise only when shell exits.
setopt histignorespace                                          # Don't save commands that start with #space

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
# Speed up completions
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

# Aliases
#
alias la="eza -la --icons=always --sort=type"
alias vim="nvim"
alias vi="nvim"
alias cat="bat"


# ZSH Plugin manager Antidode
#

# source antidote
source ${ZDOTDIR:-~}/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load ${ZDOTDIR:-~}/.zplugins
