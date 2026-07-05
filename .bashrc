# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
export EDITOR=vim
export VISUAL=vim
# Automatically load system profile variables
if [ -f /etc/profile.d/flatpak.sh ]; then
    . /etc/profile.d/flatpak.sh
fi
export PATH="$PATH:/var/lib/flatpak/exports/bin:~/.local/share/flatpak/exports/bin"
alias spotify="flatpak run com.spotify.Client"

unset rc

export PATH=$PATH:/home/reddeqii/.spicetify
export PATH=$PATH:~/.spicetify
export PATH=$PATH:~/scripts/bin
export PATH=$PATH:~/.cargo/bin
PS1='[  | \W ]  '
unset FZF_DEFAULT_OPTS
