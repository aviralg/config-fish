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

starship init fish | source
zoxide init fish | source
