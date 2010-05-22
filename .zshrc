# Path to your oh-my-zsh configuration.
# This File Need Define "ZSH" location
export ZSH=`cat $HOME/.zshrc.loc`

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="macovsky"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

source $ZSH/oh-my-zsh.sh
if [ -f $HOME/.zshrc.local ]
then
  source $HOME/.zshrc.local
fi

# Customize to your needs...


