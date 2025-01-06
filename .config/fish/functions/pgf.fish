# git fetch and update main branch
function pgf
    set -f branch $argv[1]
    if test -z $branch
        set branch main
    end
    git fetch origin --prune
    git fetch . origin/$branch:$branch
end
