function fish_title
    # emacs is basically the only term that can't handle it.
    if set -q FISH_TITLE
        echo $FISH_TITLE
    else if not set -q INSIDE_EMACS
        echo (status current-command) (__fish_pwd)
    end
end
