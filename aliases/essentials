fn tox() {
        xclip -selection clipboard
}

fn fromx() {
        xclip -selection clipboard -o
}

fn archupdate() {
        sudo pacman -Sy archlinux-keyring
        sudo pacman -Syyu
}

fn servehttp() {
        python -m http.server
}

fn genpassword() {
        openssl rand -base64 32
}

fn poff() {
        poweroff
}

fn io() {
        iostat -xmdz 1
}

fn udplisten(port) {
    nc -v -l -u -p $port
}

fn netsniff(host, port) {
    filter = "host " + $host + " and port " + $port
    sudo tcpdump -A -s 0 $filter
}

fn netstart() {
        sudo systemctl start dhcpcd@enp1s0
}

fn whichpkg(pkg) {
        pkgfile $pkg
}

bindfn tox tox
bindfn fromx fromx
bindfn archupdate archupdate
bindfn servehttp servehttp
bindfn genpassword genpassword
bindfn netstart netstart
bindfn udplisten udplisten
bindfn netsniff netsniff
bindfn poff poff
bindfn io io
bindfn whichpkg whichpkg
