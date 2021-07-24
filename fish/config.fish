set -gx EDITOR emacs -nw
set -gx VISUAL emacs

switch (uname)
    case Linux
        set -gx TERMINAL konsole
        set -gx GTAGSLABEL new-ctags
        set -x PATH $PATH $HOME/.local/bin
        set -x PATH $PATH $HOME/.config/bin
    case Darwin
end

for x in (find  ~/.config/fish/conf.d/ -type f -maxdepth 1)
    source $x
end

