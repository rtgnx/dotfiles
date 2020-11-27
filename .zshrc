export ZPLUG_HOME="$HOME/.config/zsh/zplug"

[ ! -d "$ZPLUG_HOME" ] && git clone git://github.com/zplug/zplug $ZPLUG_HOME;

for f in .aliases.zsh .zprofile ; do
  [[ -f "$HOME/$f" ]] && source "$HOME/$f" || \
    echo "[-]: no such file or directory: $HOME/$f";
done

[[ -f "$ZPLUG_HOME/init.zsh" ]] && source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-history-substring-search"

# plugins from oh-my-zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/httpie", "from:oh-my-zsh"

zplug 'sparsick/ansible-zsh'
zplug 'unixorn/fzf-zsh-plugin'
zplug 'rapgenic/zsh-git-complete-urls'
zplug 'Zocker1999NET/zsh-gtr'

zplug "chrissicool/zsh-256color"
zplug "geometry-zsh/geometry"

if ! zplug check; then
  zplug install
fi

zplug load

# PyWal theme (TTY & Terminal)
TTY_THEME="$HOME/.cache/wal/colors-tty.sh"
SHELL_THEME="$HOME/.cache/wal/sequences"

[ -f "$SHELL_THEME" ] && (cat "$SHELL_THEME" &)
[ -f "$TTY_THEME" ] && source "$TTY_THEME";

[ -f "$HOME/.env" ] && source $HOME/.env

export EDITOR=nvim

# ZSH HISTORY
#

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$HOME/.zsh_history

bindkey -v
bindkey '^R' history-incremental-search-backward

alias vim=nvim
alias ls='ls -lrt --color'

eval `dircolors $HOME/.config/themes/solarized/shell/dircolors.ansi-universal`

dot() {
  case "$1" in
    "edit")
      export PS1_OLD="$PS1"
      export PS1="[EDIT] $PS1"
      export GIT_WORK_TREE="$HOME/"
      export GIT_DIR="$HOME/Source/dotfiles.git"
      ;;

    "commit")
      export PS1="$PS1_OLD"
      unset GIT_WORK_TREE
      unset GIT_DIR
      ;;
  esac
}

dotedit() {
	[[ "$PWD" == "$HOME" ]] && export GIT_WORK_TREE="$HOME" && export GIT_DIR="$HOME/.dotfiles.git";
}
dotend() {
	unset GIT_WORK_TREE && unset GIT_DIR;
}

# Scaleway CLI autocomplete initialization.
eval "$(scw autocomplete script shell=zsh)"
