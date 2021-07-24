set -gx EDITOR emacs -nw
set -gx VISUAL emacs
# disable fish greeting
set -U fish_greeting

switch (uname)
    case Linux
        set -gx TERMINAL konsole
        set -gx GTAGSLABEL new-ctags
        set -x PATH $PATH $HOME/.local/bin
        set -x PATH $PATH $HOME/.config/bin
    case Darwin
end

if test -e ~/.config/fish/conf.d
    for x in (find  ~/.config/fish/conf.d/ -maxdepth 1 -type f)
        source $x
    end
end
