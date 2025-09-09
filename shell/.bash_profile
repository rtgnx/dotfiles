
# .bash_profile

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec dbus-run-session sway
fi

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
[ -f $HOME/.common ] && . $HOME/.common

export LC_ALL=en_GB.UTF-8
