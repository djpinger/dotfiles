#if [ -z "$TMUX" ] # When zsh is started attach to current tmux session or create a new one
#then
#    tmux attach -t TMUX || tmux new -s TMUX
#fi

export PATH=~/.rbenv/shims:/usr/local/bin:~/bin:/usr/local/Cellar:$PATH
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/Users/paulseymour/Library/Python/2.7/bin:$PATH"

#POWERLEVEL9K_PROMPT_ON_NEWLINE=true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

plugins=(
  git
)

eval `keychain --eval --agents ssh --inherit any id_rsa`

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="spaceship"
#SPACESHIP_DOCKER_SHOW=false
#SPACESHIP_DIR_TRUNC=0
#SPACESHIP_TIME_SHOW=true
#SPACESHIP_PACKAGE_SHOW=false

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir vcs)
#POWERLEVEL9K_DISABLE_RPROMPT=true

plugins=(
  git # https://github.com/robbyrussell/oh-my-zsh/wiki/Plugin:git
  history-substring-search # ZSH port of Fish history search. Begin typing command, use up arrow to select previous use
  zsh-autosuggestions # Suggests commands based on your history
  zsh-completions # More completions
  zsh-syntax-highlighting # Fish shell like syntax highlighting for Zsh
  colored-man-pages # Self-explanatory
  )
autoload -U compinit && compinit # reload completions for zsh-completions

source $ZSH/oh-my-zsh.sh # required
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias ll='ls -alF'
alias la='ls -hA'
alias l='ls -CF'
alias vi='nvim'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias cal='/usr/local/bin/icalBuddy -f -eep notes -n -nc -sd eventsToday+1'
alias bazaar='mount_smbfs //paul.seymour@tiger.invincea.local/Bazaar ~/Volumes/Bazaar'
alias beaver='mount_smbfs //paul.seymour@badger.invincea.local/Builds ~/Volumes/Beaver'
alias minip='mount_smbfs //paul.seymour@nas-manatee.invincea.local/engineering/IMS_LNP_Data ~/Volumes/MiniP'
alias ova='mount_smbfs //paul.seymour@nas-manatee.invincea.local/engineering/OVA ~/Volumes/OVA'
alias filer='mount_smbfs //paulseymour@fax-filer1.green.sophos/Engineering ~/Volumes/Filer'
alias imsbuilds='mount_smbfs //paul.seymour@badger.invincea.local/Builds/IMS /mnt/ims_builds'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias mvim='mvim --remote-tab-silent'
alias docker-cleanup='docker rm $(docker ps -a -f "name=_run_" -q) && docker rmi $(docker images -f "dangling=true" -q)'
alias nomore='find ./ -iname .DS_Store -delete'
alias wh='curl http://wttr.in/manassas_park'
alias w='curl http://wttr.in'
alias ytdl='youtube-dl -f bestaudio --extract-audio --audio-format mp3 -l'
alias dcup='docker-compose up -d'
alias dcstop='docker-compose stop'
alias dcdestroy='docker-compose stop && docker-compose rm -f'
alias dcps='docker-compose ps'
alias dclogs='docker-compose logs -f'
alias dcbuild='docker-compose build'
alias dcvi='vi docker-compose.yml'
alias dcpull='docker-compose pull'
alias novaup='docker-compose -f docker-compose-single.yml up -d'
alias novastop='docker-compose -f docker-compose-single.yml stop'
alias novadestroy='docker-compose -f docker-compose-single.yml stop && docker-compose -f docker-compose-single.yml rm -f'
alias novaps='docker-compose -f docker-compose-single.yml ps'
alias novalogs='docker-compose -f docker-compose-single.yml logs -f'
alias novabuild='docker-compose -f docker-compose-single.yml build'
alias novavi='vi docker-compose-single.yml'
alias novapull='docker-compose -f docker-compose-single.yml pull'
alias judo='sudo'
alias pair="echo 'NO PAIR FOR YOU'"
alias gew='./gradlew clean build -x check'
alias cmgew='./gradlew va-manager-applications:certificate-manager:clean && ./gradlew va-manager-applications:certificate-manager:bootRepackage && cp va-manager-applications/certificate-manager/build/libs/certificate-manager-local.jar ~/g/nova/certificate-manager/certificate-manager-local.jar'
alias gitgraph='git log --graph --abbrev-commit --pretty=oneline origin..master'
alias tftest='export TF_LOG=TRACE; terraform plan -out plan'
alias vi='nvim'

export EDITOR='nvim'
source ~/.purepower
