dotfiles
========
Your dotfiles are how you personalize your system. These are mine.

Requirements
------------
I use GNU stow to symlink all files in their respective directories. Read more
about it [here](https://www.gnu.org/software/stow "GNU stow").

Installation
------------
Use the following commands:

    git clone https://github.com/pFragga/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    stow <target_dir>

You could also use `stow *` to install the config files for all programs, but
you would have to remove the `README.md` before doing that.

    rm -f README.md
    stow *

