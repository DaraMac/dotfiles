# This script taken from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

#!/bin/bash
########
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
########

######## Variables

dir=~/dotfiles		# dotfiles directory
olddir=~/dotfiles_old	# old dotfiles backup directory
files="vimrc"		# space seperated list of files/folders to symlink in homedir

confdirs="i3 i3config" 	# directories in ~/.config
conffiles=""

########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotiles in ~"
mkdir -p $olddir
echo "..done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "..done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# create directories for .config files to go and then symlink
for dir in $confdirs; do
	echo "Making directory $dir in ~/.config"
	mkdir -p ~/.config/$dir
	echo "Creating symlink in ~/.config/$dir/config"
	ln -s ~/dotfiles/$dir/config ~/.config/$dir/config
done
