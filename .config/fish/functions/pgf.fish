# git fetch and update main branch
function pgf
    set -f branch $argv[1]
    if test -z $branch
        set branch main
    end
    # if input argument is current branch use git pull instead
    if test $branch = (git branch --show-current)
        git pull origin $branch
    else
        git fetch origin --prune
        git fetch . origin/$branch:$branch
    end
end
