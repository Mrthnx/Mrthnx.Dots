function openNvim() {
  if [ $# -eq 0 ]; then
    nvim ./ 
  else
    nvim $1
  fi
}
#
# Enable aliases to be sudo’ed
alias sudo='sudo '

alias ..="cd .."
alias ...="cd ../.."
alias ll="exa -l --icons"
alias la="exa -la --icons"
# alias la="ls -la"
alias ~="cd ~"
alias dotfiles='cd $DOTFILES_PATH'
alias v=openNvim
alias zj=zellij

# Git
alias ga="git add"
alias gaa="git add -A"
#alias gc="git commit -m"
alias gc=_gc
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd='git pretty-diff'
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsf="git push --force"
alias gpl="git pull"
alias gb="git branch"
alias gl='git pretty-log'
alias gpsmaster="git push origin master"
alias gpsmain="git push origin main"
alias gplmaster="git pull origin master"

# Docker
alias dockstartall='docker start $(docker ps -aq)'
alias dockstopall='docker stop $(docker ps -aq)'
alias dockrmall='docker rm $(docker ps -aq)'
alias dockrmiall='docker rmi $(docker images -q)'
alias dockps='docker ps'
alias dockpsa='docker ps -a'

# Privates
alias awslocal="aws --endpoint-url=http://localhost:4566 --profile=local"
alias rundev="npm run dev"
alias runstart="npm run start"
alias runlint="npm run lint"
alias runtest="npm run test"
alias runbuild="npm run build"
alias bundev="bun dev"
alias bunstart="bun start"
alias bunbuild="bun build"
alias runinstall="pnpm install"

alias mvnrun="docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -v maven-repo:/root/.m2 -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install  -D maven.test.skip=true"
alias mvninstall='mvn clean install  -D maven.test.skip=true'
alias sonarcaritaqa='mvn sonar:sonar -Dsonar.projectKey=CF_BACKEND_LOCAL -Dsonar.host.url=http://44.214.3.80 -Dsonar.login=d194076d703d260cd125c499b96db9fa20a44db8'
alias personal-gc="git config --global user.name 'Marthin Lachira' && git config --global user.email 'mrthnx96@gmail.com'"
alias dev-gc="git config --global user.name 'Marthin Lachira' && git config --global user.email 'proveedor311@culqi.com'"
alias wstorm="/home/mrthnx/.local/share/JetBrains/Toolbox/scripts/webstorm . & disown"

# Directories
alias dir="xdg-open ."
alias dirdev="cd ~/Developer"
alias dirdocker="cd ~/Developer/Personal/Docker"
alias dircsti="cd ~/Developer/CSTI"
alias dirpriv="cd ~/Developer/Personal"
alias dircarita="cd ~/Developer/CaritaFeliz/Repositories"
alias dirculqi="cd ~/Developer/CSTI/Culqui"
alias dircore="cd ~/Developer/Corelusa"
alias dirlaia="cd ~/Developer/Laia"
alias dirnexxdi="cd ~/Developer/Nexxdi"
alias dirdacode="cd ~/Developer/dacodes"

_gc() {
  if [[ "$PWD" == *Culqui* ]]; then
    echo "Ejecutando en el entorno Culqui..."
    dev-gc && git commit -m "$1"
  else
    echo "Ejecutando en el entorno personal..."
    personal-gc && git commit -m "$1"
  fi
} 

# AI Chats
alias chatIA="nvim +CodeCompanionFull"
