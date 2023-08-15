# Petros' dotfiles

Personal configuration files I for my linux system ~~which is arch btw~~.

I use [stow](https://www.gnu.org/software/stow "GNU stow") to symlink all
configuration files into their respective directories. So unless you want to
copy a file separately, make sure you have it installed on your system.

## Installation

Use the following commands after cloning the repository (or extracting the zip
file):

```sh
cd dotfiles/
stow .
```

## Side-notes

- stow will not overwrite files/directories that already exist in the
  user's file system.

