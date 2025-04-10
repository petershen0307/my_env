set -g fish_prompt_pwd_dir_length 0 # show full directory name
set -g fish_vcs_branch_name_length 0 # show full branch name

source ~/.asdf/asdf.fish
set PATH $HOME/.cargo/bin $PATH

if not test -e ~/.config/fish/completions/asdf.fish
    mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
end

# default functions
# other functions please add at directory $HOME/.config/fish/functions
function ll
    ls -al $argv
end

function code
    "/mnt/c/Users/peter_shen/AppData/Local/Programs/Microsoft VS Code/bin/code" $argv
end

function codei
    "/mnt/c/Users/peter/AppData/Local/Programs/Microsoft VS Code Insiders/bin/code-insiders" $argv
end
