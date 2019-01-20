# dotfiles

Just my dotfiles.

Reference: [Managing your dotfiles with GNU Stow](http://codys.club/blog/2015/07/07/managing-your-dotfiles-with-gnu-stow/)

## Dependencies

GNU Stow: `$ sudo pacman -S stow`

## Usage

1. Verify conf files don't already exist.

   a. if they do `$ mv ~/.bashrc ~/.bashrc.ORG`

2. Symlink all conf files in a dir (ex. bash):

   a. `cd ~/dotfiles`

   b. home conf files: `$ stow bash`

   c. system conf files: `$ sudo stow -t / pamac` 
