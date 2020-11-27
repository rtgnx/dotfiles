


### Installation

```Bash
  git clone --bare --recurse-submodules -j8 git://github.com/rtgnx/dotfiles $HOME/.dotfiles.git
  GIT_WORK_TREE="$HOME" GIT_DIR="$HOME/.dotfiles.git" git checkout
```


- ZSH will install zplug and all plugins on first run
- nvim +PlugInstall! to install all plugins for nvim
