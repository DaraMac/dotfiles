# This script taken from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

#!/bin/bash
########
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
########

######## Variables

dotdir=~/dotfiles	# dotfiles directory
olddir=~/dotfiles_old	# old dotfiles backup directory
files="vimrc gitconfig"	# space seperated list of files/folders to symlink in homedir

confdirs="i3 i3status" 	# directories in ~/.config

########

# create dotfiles_old in homedir, along with .config directories
echo "Creating $olddir for backup of any existing dotiles in ~"
mkdir -p $olddir

for dir in $confdirs; do
	mkdir -p $olddir/$dir
done
echo "..done"

# change to the dotfiles directory
echo "Changing to the $dotdir directory"
cd $dotdir
echo "..done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dotdir/$file ~/.$file
done

# move existing files, create any new directories for .config files and symlink
for dir in $confdirs; do
	mv ~/.config/$dir/config $olddir/$dir/config
	echo "Making directory $dir in ~/.config"
	mkdir -p ~/.config/$dir
	echo "Creating symlink in ~/.config/$dir/config"
	ln -s ~/dotfiles/$dir/config ~/.config/$dir/config
done
echo "..done"
