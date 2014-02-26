#General Functions
alias ll='ls -l';
alias la='ls -a';
alias lla='ls -la';
alias ..='cd ..';
alias ...='cd ../..';
alias ....='cd ../../..';
alias .....='cd ../../..';

#Custom Functions
function md() {
    mkdir -pv $1 && cd $1
}

function mgit() {
    md "$1" && git init
}
pastebin() { 
    local content="$(cat)"; 
    local sha="$(sha1sum <<< "$content")"; 
    local fname="${sha:0:6}"; 
    local url="http://zerodaedalus.com/pastes/$fname"; 
    local dest="/var/www/pastes"; 
    printf "%s\n%s\n" "$dest/$fname" "$url"; 
    ssh dajoker29@shadow dd of="$dest/$fname" <<< "$content"; 
    xclip <<< "$url"; 
    xclip -sel clipboard <<< "$url";
}

#Custom scripting
alias storalink='sshfs stora:/home/dajoker29/ ~/Stora/';
alias backup='rsync -avz shadow:/home/dajoker29/ ~/Stora/server_backup/';
alias www='cd /var/www';
alias muzik='cd /var/www/muzik';
alias zdae='cd /var/www/zdae';
alias vim='vim -p';
alias com='compass watch .';
alias warzone='cd /var/www/warzone';
alias narc='cd /var/www/warzone/wp-content/themes/narcissus';
alias jp='cd /var/www/warzone/wp-content/themes/julian-paul';
alias tic='cd /var/www/tic-tac-toe';
alias dev='cd /var/www/dev';
alias theme='cd /var/www/warzone/wp-content/themes';
alias hist='cat ~/.scripts/log';
alias irssi='screen irssi';

PATH=$PATH:/home/dajoker29/.scripts/
export PATH
