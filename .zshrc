# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt notify
unsetopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jhy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", as:plugin
zplug "zsh-users/zsh-completions", as:plugin
zplug "dracula/zsh", as:theme

zplug load --verbose

bindkey "^f" autosuggest-accept
DRACULA_DISPLAY_GIT=0
DRACULA_DISPLAY_TIME=1
DRACULA_DISPLAY_CONTEXT=1

export EDITOR=nvim

RPS1='%F{blue}养君中和之正性，禁尔忿欲之邪心。'

local dev_cfg=~/.zshdc

if [ -d ~/.local/bin ]; then
    PATH=~/.local/bin:$PATH
fi

if [ -f $dev_cfg ]; then
    source $dev_cfg
fi
