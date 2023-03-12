# dotfiles

Personal configuration files I for my linux system ~~which is arch btw~~.

Uses [GNU stow](https://www.gnu.org/software/stow) to symlink files into their respective
directories. So unless you want to copy a file separately, make sure you have **stow** installed on your
system.

## Usage

Use the following command after cloning the directory (or extracting the zip file):

```sh
cd dotfiles
stow .
```

## Side-notes

- Haven't yet decided which files I want from `~/.local`, so for the moment it is ignored.

- The `.scripts` directory contains scripts that other programs use. You might want to append it to
    your PATH...

- **stow** will not overwrite files/directories that already exist in the user's file system.

