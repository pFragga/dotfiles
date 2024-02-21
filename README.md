dotfiles
========
Your dotfiles are how you personalize your system. These are mine.

Requirements
------------
I use GNU stow to symlink all files in their respective directories. Read more
about it [here](https://www.gnu.org/software/stow "GNU stow docs").

Installation
------------
Use the following commands:

    $ git clone https://github.com/pFragga/dotfiles ~/.dotfiles
    $ cd ~/.dotfiles
    $ stow <target_dir>

Instead of specifying a target directory, one can also use `stow */` to install
every directory.

NOTE: do not run `stow *` (without the `/`), as it will also match the README
and stow will start complaining.
