# vimrc
Support for PEP8 has been implemented, splitting of screen, moving between splits, folding & unfolding code, indenting for html, js and css.

# install instructions
step 1: git clone vundle:
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

step 2: get VIMRC from this repo

step 3: run these commands to install auto complete
```
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh
```

step 3: start vim and run :PluginInstall

# commands
Open a file and split vertical:
```
:sp <file>
```

Open a file and split Horizontal:
```
:vs <file>
```

key combination | description
--- | ---
Ctrl-j | move to the split below
Ctrl-k | move to the split above
Ctrl-l | move to the split to the right
Ctrl-h | move to the split to the left
spacebar | Fold or unfold code(methods & classes)

# TODO
create a full list of all commands plus description

# references
https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
