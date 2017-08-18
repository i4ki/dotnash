fn golab(project) {
        cd $GOPATH + "/src/gitlab.neoway.com.br/datapirates/" + $project
        refreshPrompt()
}

fn gohub(project) {
        cd $GOPATH + "/src/github.com/NeowayLabs/" + $project
        refreshPrompt()
}

bindfn golab golab
bindfn gohub gohub
