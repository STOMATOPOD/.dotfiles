# Shebang for bash
#!/bin/bash

# Check the operating system
if [ $(uname) != 'Linux' ]; then
    # Send error message to log
    echo "Error: The operating system isn't Linux. Exiting." >> linuxsetup.log
    # exit
    exit
fi
# implicit else (because otherwise the program would terminate)
# make dir ~/.TRASH (if it doesn't exist)
mkdir -p ~/.TRASH

# if ~/.vimrc exists check
if [ -f "~/.vimrc" ]; then
    # mv existing vimrc to archive
    mv ~/.vimrc ~/.bup_vimrc
    # log the change to .vimrc
    echo "The current .vimrc was changed to .bup_vimrc" >> linuxsetup.log
fi
# send the contents of the etc/vimrc file to overwrite ~/.vimrc
cat etc/vimrc > ~/.vimrc
# add a command to the end of ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
