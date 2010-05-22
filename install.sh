#ln -s linsong/.vim ~/.vim
#ln -s linsong/.vimrc ~/.vimrc

DOTFILES=$(pwd)
ZSH_FOLDER="$DOTFILES/my_zsh"
echo "zsh folder $ZSH_FOLDER"
VIM_FOLDER="$DOTFILES/other"
echo "vim folder $VIM_FOLDER"

ZSH_RC_FILE="$HOME/.zshrc"
echo "zsh rc file $ZSH_RC_FILE"
# {{{ link zsh config to home directory
if [ -L "$ZSH_RC_FILE" ]
then 
  cp $ZSH_RC_FILE "$ZSH_RC_FILE.bak"
  echo ".zshrc exists, backup it first"
  rm -rf $ZSH_RC_FILE
  echo "Remove Current .zshrc"
fi
ln -s $DOTFILES/.zshrc $HOME/.zshrc
echo "link $DOTFILES/.zshrc to $HOME/.zshrc"
echo "$ZSH_FOLDER" > $HOME/.zshrc.loc

# }}}


# vim:fdm=marker:ts=2
