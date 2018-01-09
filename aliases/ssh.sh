fn sshtunnel(
    localport,
    remotehost,
    remoteport,
    bastionhost,
    user,
    keyfile
) {
    portforward <= format("%s:%s:%s", $localport, $remotehost, $remoteport)
    echo $portforward
    authinfo <= format("%s@%s", $user, $bastionhost)
    ssh -v -nNTL $portforward $authinfo -i $keyfile
}

fn nwytunnel(
    localport,
    remotehost,
    remoteport,
    bastionhost
) {
    user = "tiago.katcipis"
    keyfile <= format("%s/.ssh/platform-bastion-katcipis", $HOME)
    sshtunnel($localport, $remotehost, $remoteport, $bastionhost, $user, $keyfile)
}

bindfn sshtunnel sshtunnel
bindfn nwytunnel nwytunnel
