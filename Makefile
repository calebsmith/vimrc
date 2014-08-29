all:
	make tmux
	make git
	make vim
	make indent

tmux:
	cp tmux.conf ~/.tmux.conf

git:
	cp gitconfig ~/.gitconfig
	cp gitignore ~/.gitignore

vim:
	cp vimrc ~/.vimrc
indent:
	cp indent.pro ~/.indent.pro
