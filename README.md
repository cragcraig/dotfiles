## Home directory repo setup instructions

1. Ensure your shell has the `config` alias (e.g., for Fish shell):

`alias config '/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'`

2. Add the folder to gitignore to avoid recursion issues:

`echo ".cfg" >> .gitignore`

3. Clone the bare repo to your home directory

`git clone --bare git@github.com:cragcraig/dotfiles.git $HOME/.cfg`
