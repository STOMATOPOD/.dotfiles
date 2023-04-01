# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## etc/vimrc
This is my custom .vimrc configuration for Vim. It turns on syntax 
highlighting, line numbers, autoindent, a ruler in the status line,
the elflord colorsheme, and makes tabs more pretty.
## etc/bashrc_custom
This is my custom .bashrc configuration for Bash. It puts executables in the
current directory on the PATH, creates some useful aliases, and functions for
packing/unpacking tarballs.
## Makefile
This runs the custom scripts included in this module. By default, runs make
clean and make linux, but make clean can be run individually to remove
changes made by the custom script.
## bin/linux.sh
This is a script to add the configuration files to your home directory. The
script first checks to make sure it's running on the right operating system,
then creates a ~/.TRASH directory, and moves the custom vim configuration
files. The old .vimrc file will be deleted by default, because the script
is usually ran with make linux (which runs make clean first). Last, it sources
the custom bashrc in the home bashrc.
## bin/cleanup.sh
This is a script to remove the customized configuration created by the module.
It deletes the old .vimrc, removes the source call from the home bashrc, and
deletes the .TRASH directory.
