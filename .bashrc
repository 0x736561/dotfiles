
PS1='[\033[32m\w\033[0m]\n~> '
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# alias
alias grep='grep -i --color'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -p'
alias mbsync='mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc'
alias vim='helix'
alias snippet='silicon -b \#1d2021 --theme gruvbox-dark'
alias cat='bat'
alias ls='exa --hyperlink --icons=always'
alias ll='exa --hyperlink --icons=always -lah --group-directories-first'
alias l='exa --hyperlink --icons=always -lh --group-directories-first'

# config
alias config='/usr/bin/git --git-dir=$HOME/.dot --work-tree=$HOME'
alias config-update='config add -u; config commit -m "$(date)"; cd /mnt/setup/dot; git pull; cd'
