if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#ls to be colourful
export CLICOLOR=1
#export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
#export LSCOLORS="ExFxCxDxBxegedabagacad"

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
