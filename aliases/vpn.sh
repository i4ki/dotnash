fn vpn(subcommand) {
        sudo systemctl $subcommand openvpn-client@client.service
}

fn vpnstart() {
        vpn("start")
}

fn vpnstop() {
        vpn("stop")
}

bindfn vpnstart vpnstart
bindfn vpnstop vpnstop
