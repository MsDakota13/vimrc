# vimrc
Support for PEP8 has been implemented, splitting of screen, moving between splits, folding and unfolding code

# install instructions
step 1: git clone vundle:
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

step 2: get VIMRC from this repo

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

# references
https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
