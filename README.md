# dotfiles

Just my dotfiles.

Reference: [Managing your dotfiles with GNU Stow](http://codys.club/blog/2015/07/07/managing-your-dotfiles-with-gnu-stow/)

## Dependencies

GNU Stow: `$ sudo pacman -S stow`

## Usage

1. Verify conf files don't already exist.
   a. if they do `$ mv ~/.bashrc ~/.bashrc.ORG` (look into `--adopt`)

2. Symlink all conf files in a dir:

   a. `cd ~/dotfiles` (not necessary if `$ export STOW_DIR="$HOME/dotfiles"`)

   b. utility conf files: `$ stow utils`

   c. system conf files: `$ sudo stow -t / system`
   
   d. bash & vim for root user `$ sudo stow --ignore='.config' --ignore='.gitconfig' -t /root utils`
