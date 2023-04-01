# Shebang for bash
#!/bin/bash

# remove ~/.vimrc if exists
if [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi
# remove the source line from ~/.bashrc (edit in place)
sed -i 's/source ~\/\.dotfiles\/etc\/bashrc_custom//' ~/.bashrc
# remove ~/.TRASH directory if exists
if [ -d ~/.TRASH ]; then
    rm -r ~/.TRASH
fi
