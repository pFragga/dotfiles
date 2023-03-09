# dotfiles

Personal configuration files I for my linux system ~~which is arch btw~~.

Uses [GNU stow](https://www.gnu.org/software/stow) to symlink files into their respective
directories. So unless you want to copy a file separately, make sure you have it installed on your
system.

## Usage

Use the following command after cloning the directory (or extracting the zip file):

```sh
cd dotfiles
stow .
```

