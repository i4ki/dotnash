fn gitlab_neoway_path(group, project) {
        return format(
		"%s/src/gitlab.neoway.com.br/%s/%s",
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

fn golab(project) {
        pirates <= gitlab_neoway_path("datapirates", $project)
        platform <= gitlab_neoway_path("dataplatform", $project)
        status <= changedir($pirates)
        if $status == "0" {
		return
        }
        status <= changedir($platform)
        if $status == "0" {
		return
        }
        echo "unable to find project: " + $project
}

fn gohub(project) {
        cd $GOPATH + "/src/github.com/NeowayLabs/" + $project
        refreshPrompt()
}

bindfn golab golab
bindfn gohub gohub
