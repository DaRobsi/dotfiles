#
# CAFFEINATEDRACCOON BASHRC
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Display fastfetch when opening a terminal
fastfetch


## ENVVARS ##
EDITOR="helix"


## ALIASES ##
alias ls='exa'
alias ll='exa -lg --total-size'
alias la='exa -lag --total-size'
alias lt='exa -T'
alias lta='exa -Ta'
alias grep='grep --color=auto'
alias cat='bat --style header --style snip --style changes'
alias hyperbeam='hyperbeam --disable-gpu-sandbox & disown'
alias wev='wev -F wl_pointer'
alias setwp='/home/$USER/.config/hypr/scripts/setwallpaper.sh -t & disown'
alias dcp='docker-compose'
alias hx='helix'
alias clnJnk='/home/$USER/.config/scripts/clnJnk'
alias yazelix='nu -c "zellij --config-dir ~/.config/yazelix/zellij attach --create yazelix_ghostty options --default-layout yazelix"'

## ADDITIONAL FUNCTIONS ##
mkcd () { mkdir -p $1; cd $1; }

setkbl () { hyprctl keyword input:kb_layout $1; }

countlines () { find $1 -name $2 -exec wc -l {} +; }

## COMMAND PROMPT ##
eval "$(starship init bash)"

## ZOXIDE ##
eval "$(zoxide init --cmd cd bash)"


