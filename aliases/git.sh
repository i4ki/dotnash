fn gcheck(branch) {
        if $branch == "" {
                branch <= git branch -r | sed "s/^[* \\t]*//g" | fzf --header "Select the branch: " | xargs echo -n
                git checkout $branch
        } else {
                branchs <= git branch | sed "s/^[* \\t]*//g"

                for b in $branchs {
                        if $b == $branch {
                                git checkout $branch

                                # break isn't implemented yet
                                return $branch
                        }
                }

                git checkout -b $branch
        }

        refreshPrompt()
        return $branch
}

fn gclean() {
        git remote prune origin
}

bindfn gcheck gcheck
bindfn gclean gclean
