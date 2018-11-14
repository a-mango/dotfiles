config_dirs = $(wildcard */)

default: install

dependencies:
	@command -v stow >/dev/null 2>&1 || sudo pacman -S stow || { echo >&2 "Please install GNU stow"; exit 1; }

pull:
	git pull origin master

submodules:
	git submodule update --init

vim-plugins: submodules
	vim +PluginInstall +qall

stow:
	stow --target $(HOME) --verbose $(config_dirs)

restow:
	stow --target $(HOME) --verbose --restow $(stow_dirs)

install: dependencies submodules stow vim-plugins

update: dependencies pull restow vim-plugins

clean:
	stow --target $(HOME) --verbose --delete $(stow_dirs)