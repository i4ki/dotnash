fn gcheck(branch) {

	fn removeorigin(b) {
		parsed <= split($b, "/")
		return $parsed[1]
	}

        if $branch == "" {
                branch <= git branch -r | sed "s/^[* \\t]*//g" | fzf --header "Select the branch: " | xargs echo -n
                branch <= removeorigin($branch)
                git checkout $branch
		refreshPrompt()
                return
        } 

	branchs <= git branch | sed "s/^[* \\t]*//g"

	for b in $branchs {
		if $b == $branch {
			git checkout $branch

			# break isn't implemented yet
			return $branch
		}
	}

	git checkout -b $branch
	refreshPrompt()
}

fn gclean() {
        git remote prune origin
}

bindfn gcheck gcheck
bindfn gclean gclean
