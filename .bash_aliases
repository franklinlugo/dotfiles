alias updatebashaliases='. ~/.bash_aliases'
alias editbashaliases='vim ~/.bash_aliases'
alias editzshconf="vim ~/.zshrc"
alias edittmuxconf="vim ~/.tmux.conf"

# pendrive utils
alias um1='umount /dev/sdb1'
alias um2='umount /dev/sdc1'
alias um3='umount /dev/sdd1'
alias dd1='dd count=1 bs=512 if=/dev/zero of=/dev/sdb && sync && gparted'
alias dd2='dd count=1 bs=512 if=/dev/zero of=/dev/sdc && sync && gparted'
alias dd3='dd count=1 bs=512 if=/dev/zero of=/dev/sdd && sync && gparted'
alias clone1='bash /media/CLONEZILLA/utils/linux/makeboot.sh /dev/sdb1'
alias clone2='bash /media/CLONEZILLA/utils/linux/makeboot.sh /dev/sdc1'
alias drbl1='bash /media/DRBL/utils/linux/makeboot.sh /dev/sdb1'
alias drbl2='bash /media/DRBL/utils/linux/makeboot.sh /dev/sdc1'

## Paths
alias home='cd $HOME'
alias desktop='cd $HOME/Desktop/'
alias downloads='cd $HOME/Downloads/'
alias documents='cd $HOME/Documents/'
alias pictures='cd $HOME/Pictures/'
alias repo='cd $HOME/repositories/ && l'
alias opt='cd /opt/'

## Commons
alias l='ls $LS_OPTIONS -lA --color=auto'
alias ll='ls $LS_OPTIONS -l --color=auto'
alias ls='ls $LS_OPTIONS --color=auto'
alias p='pwd'
alias dm='dmesg'
alias update="apt update"
alias upgrade="apt upgrade"
alias dupgrade="apt full-upgrade"
alias fu='apt update && apt --yes upgrade && apt --yes full-upgrade'
alias hc='history -c && cat /dev/null > /root/.bash_history && exit'
alias dmp3='youtube-dl --extract-audio --audio-format mp3'
alias cl="clear"

## development
alias c='code .'
alias kc='pkill code'
alias dnm='rm -rf node_modules && npm install'
alias dnmas='rm -rf node_modules && npm install && npm start'
alias nrt='npm run test'
alias nrtw='npm run test'
alias nrc='npm run coverage'
alias ns='npm start'
alias ys='yarn start'


#Git
trackallbranches(){ git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done }
alias gtab=trackallbranches
alias gpom='git push origin master'
alias gpod='git push origin develop'
alias gsc='git diff --name-only --diff-filter=U'
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gbd="git branch -D"

# utils
alias crea=createEnterDir
createEnterDir(){
	mkdir $1
	cd $1
}

mkfile() { mkdir -p "$(dirname "$1")" && touch "$1" ; }

function homestead() {
	( cd ~/repositories/homestead && vagrant $* )
}

# vscode folders

bugbranch='bugfix/'
alias createbugbranch='git checkout -B $bugbranch'
alias deletebugbranch='git branch -D $bugbranch'
alias gcbb='git checkout $bugbranch'
alias gpbb='git push origin $bugbranch'

featurebranch='feature/'
alias createfeaturebranch='git checkout -B $featurebranch'
alias deletefeaturebranch='git branch -D $featurebranch'
alias gcfb='git checkout $featurebranch'
alias gpfb='git push origin $featurebranch'

## System
alias ram-consumption="ps aux | awk '{print \$2, \$4, \$11}' | sort -k2rn | head -n 20"
alias halt='shutdown -h now'
alias hibernate='pm-hibernate'
alias screenoff='sleep 1; xset dpms force off'

#MySQL
alias mysqlstart="sudo service mysql start"
alias mysqlstop="sudo service mysql stop"
alias mysqlstatus="sudo service mysql status"
alias mysql="mysql -u root -p"

#MongoDB
alias mongostart="sudo systemctl start mongod"
alias mongostop="sudo systemctl stop mongod"
alias mongostatus="sudo systemctl status mongod"
alias mongorestart="sudo systemctl restart mongod"

#firefox
alias openfirefox51="/opt/firefox51/firefox -P"
