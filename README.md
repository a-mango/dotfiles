# Arch configuration files 📘

This repository contains the configuration files for my Arch and Manjaro Linux systems 🐧

## Getting started

### Prerequisites

Make sure you have ```stow``` installed on your system.

### Preamble

Configuration files are grouped together in feature-specific directory. The subsequent file structure is identical to the one of the user's home directory. The files are then 🔗 symlinked where they belong using GNU Stow.

### Installing

To install configuration files with ```stow```  and hence make symlinks, simply navigate to the root of the repository and run ```stow folder``` to link all the files in the directory.
```bash
stow xresources-thinkpad
```

## GNU Stow

To make the functionning of stow more comprehensible, here is a comparison of two fake ```tree -a``` outputs: this repository's file structure and the user's home directory once the files are stowed in place. The files on the right side are symlinks to the files on the left.

```
dotfiles                      /home/user
├── compton                   ├── .config 
│   └── .config               │   └── compton.conf
│       └── compton.conf      │   └── dunst
├── dmenu                     │       └── dunstrc
│   └── .dmenurc              ├── .dmenurc
├── dunst                     ├── .i3       
│   └── .config               │   └── config
│       └── dunst             ├── .vimrc
│           └── dunstrc       ├── .zshrc
├── i3
│   └── .i3
│       └── config
├── vim
│   └── .vimrc
└── zsh
    └── .zshrc
```

## Deployment

Stow all folder by using ```make install``` or update all stowed folder by running ```make update```.

## Issues

### Frequent problems
None encountered (yet 🎲).

### Other

Please open an [issue](https://github.com/a-mango/dotfiles/issues/new) on the [issues](https://github.com/a-mango/dotfiles/issues) page. 🐛

## Author
Built with 💙 by [a-mango](https://github.com/a-mango).

## License

[MIT](https://github.com/a-mango/dotfiles/blob/master/LICENSE)

## Acknowledgments

[andrewsardone](https://github.com/andrewsardone) for inspiration on his [makefile](https://github.com/andrewsardone/dotfiles/blob/master/Makefile).