fn gitlab_neoway_path(group, project) {
        return format(
		"%s/src/gitlab.neoway.com.br/%s/%s",
		$GOPATH,
		$group,
		$project,
	)
}

fn github_path(group, project) {
        return format(
		"%s/src/github.com/%s/%s",
		$GOPATH,
		$group,
		$project,
	)
}

fn changedir(dir) {
        _, status <= ls $dir >[2] /dev/null
        if $status == "0" {
		cd $dir
		refreshPrompt()
        }
	return $status
}

fn findproject(possibilities) {
	for possibility in $possibilities {
		status <= changedir($possibility)
		if $status == "0" {
			return
		}
	}
	echo
        echo "unable to find project: " + $project
}

fn golab(project) {
        lambda <= gitlab_neoway_path("lambda", $project)
        pirates <= gitlab_neoway_path("datapirates", $project)
        platform <= gitlab_neoway_path("dataplatform", $project)

        findproject(($lambda $pirates $platform))
}

fn gohub(project) {
        neowaylabs <= github_path("NeowayLabs", $project)
        madlambda <= github_path("madlambda", $project)
        katcipis <= github_path("katcipis", $project)

        findproject(($neowaylabs $madlambda $katcipis))
}

bindfn golab golab
bindfn gohub gohub
