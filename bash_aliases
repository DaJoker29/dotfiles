#General Functions
alias ll='ls -l';
alias la='ls -a';
alias lla='ls -la';
alias ..='cd ..';
alias ...='cd ../..';
alias ....='cd ../../..';
alias .....='cd ../../../..';
alias vim='vim -p';
alias com='compass watch .';
alias hist='cat ~/.scripts/log';
alias irssi='screen irssi';

#Custom Functions
function md() {
    mkdir -pv $1 && cd $1
}

function mgit() {
    md "$1" && git init
}

function pastebin() { 
    local content="$(cat)"; 
    local sha="$(sha1sum <<< "$content")"; 
    local fname="${sha:0:6}"; 
    local url="http://zerodaedalus.com/pastes/$fname"; 
    local dest="/var/www/pastes"; 
    printf "Destination: %s\nURL: %s\n" "$dest/$fname" "$url"; 
    ssh dajoker29@shadow dd of="$dest/$fname" <<< "$content"; 
    xclip <<< "$url"; 
    xclip -sel clipboard <<< "$url";
}

#Remotes/Servers
alias storalink='sshfs stora:/home/dajoker29/ ~/Stora/';
alias backup='rsync -avz shadow:/home/dajoker29/ ~/Stora/server_backup/';

#Local Dev Server
alias www='cd /var/www';
alias muzik='cd /var/www/designs/compound-muzik-design';
alias zdae='cd /var/www/zdae';
alias vim='vim -p';
alias com='compass watch .';
alias warzone='cd /var/www/warzone';
alias narc='cd /var/www/warzone/wp-content/themes/narcissus';
alias jp='cd /var/www/warzone/wp-content/themes/julian-paul';
alias tic='cd /var/www/tic-tac-toe';
alias dev='cd /var/www/dev';
alias theme='cd /var/www/warzone/wp-content/themes';

#Git
alias ga='git a';
alias gc="git cam $*";
alias glog='git glog';
alias gb='git checkout -b $1 $2';
alias gbd='git o develop; git bd $1';
alias gch='git o $1';
alias gs='git s';
alias today='git today';
alias gps='git ps';
alias gpl='git pl';

