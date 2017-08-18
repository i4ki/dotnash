# Git aliases

fn gitbranch() {
        branch <= git rev-parse --abbrev-ref HEAD | xargs echo -n
        return $branch
}

# gcheck is a helper for easy checkouts
# If executed without passing a branch it will prompt for a list
# of existing branches for checkout.
# if executed passing a non-existent branch, then it will create the
# branch, otherwise it will only checkout to given branch.
fn gcheck(branch) {
        if $branch == "" {
                branch <= git branch | sed "s/^[* \\t]*//g" | fzf --header "Select the branch: " | xargs echo -n
                git checkout $branch
        } else {
                branchs <= git branch | sed "s/^[* \\t]*//g"
                # TODO:IFS: split branches by \n

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