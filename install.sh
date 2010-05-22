#ln -s linsong/.vim ~/.vim
#ln -s linsong/.vimrc ~/.vimrc
git submodule init
git submodule update
DOTFILES=$(pwd)
ZSH_FOLDER="$DOTFILES/my_zsh"
echo "zsh folder $ZSH_FOLDER"
OTHER_FOLDER="$DOTFILES/other"
echo "vim folder $OTHER_FOLDER"


# {{{ install zsh config 
ZSH_RC_FILE="$HOME/.zshrc"

echo "zsh rc file $ZSH_RC_FILE"
if [ -a "$ZSH_RC_FILE" ]
then 
  cp $ZSH_RC_FILE "$ZSH_RC_FILE.bak"
  echo ".zshrc exists, backup to $ZSH_RC_FILE.bak"
  rm -rf $ZSH_RC_FILE
  echo "Remove Current .zshrc"
fi
ln -s $DOTFILES/.zshrc $HOME/.zshrc
echo "link $DOTFILES/.zshrc to $HOME/.zshrc"
echo "$ZSH_FOLDER" > $HOME/.zshrc.loc
# }}}

# {{{ install other config
FILES=( ".vimrc" ".vim" ".tmux" ".tmux.conf" ".vimperator" ".vimperatorrc" )
for FILE_NAME in ${FILES[@]}
do
  dist_file_path="$HOME/$FILE_NAME"
  src_file_path="$DOTFILES/other/$FILE_NAME"
  if [ -a  $dist_file_path ]
  then
    cp -R $dist_file_path "$dist_file_path.bak"
    echo "$dist_file_path exists, backup it to $dist_file_path.bak"
    rm -rf $dist_file_path
    echo "remove "$dist_file_path
  fi

  ln -s $src_file_path $dist_file_path
  echo "link $src_file_path $dist_file_path"
done
# }}}
echo "***** All Done ******"


#chsh -s `which zsh`

# vim:fdm=marker:ts=2
