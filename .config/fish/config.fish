set -g fish_prompt_pwd_dir_length 0 # show full directory name
set -g fish_vcs_branch_name_length 0 # show full branch name

source ~/.asdf/asdf.fish

if not test -e ~/.config/fish/completions/asdf.fish
    mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
end

# function
function pbcopy
    xclip -selection clipboard
end

function pbpaste
    xclip -selection clipboard -o
end

function chd
    cd "$(find $HOME/code -type d -not -path "*/.git/*" | fzf)"
end

function pgf
    set -f branch $argv[1]
    if test -z $branch
        set branch main
    end
    git fetch origin --prune
    git fetch . origin/$branch:$branch
end

function code
    "/mnt/c/Users/peter_shen/AppData/Local/Programs/Microsoft VS Code/bin/code" $argv
end

function code-insiders
    "/mnt/c/Users/peter/AppData/Local/Programs/Microsoft VS Code Insiders/bin/code-insiders" $argv
end
