# Petros' dotfiles

Personal configuration files I for my linux system ~~which is arch btw~~.

Uses [GNU stow](https://www.gnu.org/software/stow) to symlink files into their
respective directories. So unless you want to copy a file separately, make sure
you have **stow** installed on your system.

## Usage

Use the following commands after cloning the repository (or extracting the zip
file):

```sh cd dotfiles stow . ```

## Side-notes

- **stow** will not overwrite files/directories that already exist in the
  user's file system.

- The `.scripts` directory contains my own scripts that other programs use. You
  might want to append it to your PATH...

