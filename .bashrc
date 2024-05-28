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
alias setwp='/home/$USER/.config/hypr/scripts/setwallpaper.sh & disown'
alias dcp='docker-compose'
alias hx='helix'
alias clnJnk='/home/$USER/.config/scripts/clnJnk'


## ADDITIONAL FUNCTIONS ##
mkcd () { mkdir -p $1; cd $1; }

setkbl () { hyprctl keyword input:kb_layout $1; }

## COMMAND PROMPT ##
eval "$(starship init bash)"

## ZOXIDE ##
eval "$(zoxide init --cmd cd bash)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/raccoon/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/raccoon/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/raccoon/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/raccoon/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

