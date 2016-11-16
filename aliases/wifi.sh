fn wifi() {
	sudo wifi-menu
	sudo rm /etc/resolv.conf

	sudo echo "nameserver 8.8.8.8\nnameserver 8.8.4.4\n" | sudo tee /etc/resolv.conf
}

bindfn wifi wifi
