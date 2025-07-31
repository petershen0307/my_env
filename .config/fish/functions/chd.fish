# change to project directory
function chd
    set dir (find $HOME/wsl_code -maxdepth 4 -type d -not -path "*/.git/*" | fzf)
    if test -n "$dir"
        cd $dir
    else
        echo "No directory selected."
    end
end
