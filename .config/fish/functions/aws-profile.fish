function aws-profile
    set profiles (aws configure list-profiles)
    if test (count $profiles) -eq 0
        echo "No AWS profiles found."
        return 1
    end

    set selected (printf '%s\n' $profiles | fzf --height 40% --reverse --border)

    if test -n "$selected"
        set -gx AWS_PROFILE $selected
        echo "Switched to AWS profile: $AWS_PROFILE"
    else
        echo "No profile selected."
    end
end
