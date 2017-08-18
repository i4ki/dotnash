

# Delete all containers
fn dockercleanc() {
        printf "\n>>> Deleting stopped containers\n\n"
        rawcontainers <= docker ps -a -q
        containers <= split($rawcontainers, "\n")
        for container in $containers {
            docker rm -f $container
        }
}

# Delete all images.
fn dockercleani() {
        printf "\n>>> Deleting untagged images\n\n"
        rawimages <= docker images -q
        images <= split($rawimages, "\n")
        for img in $images {
            docker rmi -f $img
        }
}

## Delete all stopped containers and untagged images.
fn dockerclean() {
    dockercleanc()
    dockercleani()
}

## Delete orphaned volumes
fn dockercleanv() {
        printf "\n>>> Deleting orphaned volumes.\n\n"
        # FIXME
        #volumes <= docker volume ls -qf dangling=true
        docker volume rm $volumes
}

bindfn dockercleanc dockercleanc
bindfn dockercleani dockercleani
bindfn dockercleanv dockercleanv
bindfn dockerclean dockerclean
