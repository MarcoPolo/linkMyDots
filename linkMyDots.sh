echo "hello there, I will handle making your dot files for you today."

for ARG in $*
do
	echo "Moving $ARG"
	mv $HOME/$ARG $HOME/dotfiles
	echo "Creating symbolic link for $ARG"
	ln -s $HOME/dotfiles/$ARG $HOME/$ARG
done
