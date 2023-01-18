export PF_INFO='ascii title os kernel memory'

export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_IN.UTF-8
export ARCHFLAGS="-arch x86_64"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13
plugins=(git)

source $ZSH/oh-my-zsh.sh

alias mounthdd="sudo mount /dev/sda -t ext4 /mnt/hdd/"
alias unmounthdd="sudo umount /mnt/hdd/"
alias spu="sudo pacman -Syu"
alias syu="yay -Syu"
alias spi="sudo pacman -S"
alias spr="sudo pacman -Rns"
alias remorphans="sudo pacman -Qdtq | sudo pacman -Rns -"
alias xopen="xdg-open"
alias fetch="pfetch"
alias bthpc="bluetoothctl connect 88:C9:E8:1F:E9:39"
alias bthpdc="bluetoothctl disconnect 88:C9:E8:1F:E9:39"
alias gt="gotop"
