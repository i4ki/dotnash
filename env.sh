#!/usr/bin/env nash

fn initenv() {
	var nashbin = $NASHROOT+"/bin"
	var usrbin = $HOME+"/bin"
	var plan9 = "/usr/local/plan9"
	var plan9bin = $plan9+"/bin"
	var acmebin = $NASHPATH+"/lib/acme/bin"
	var goroot = "/usr/local/go"
	var gobin = $goroot+"/bin"
	var paths = ($gobin $nashbin $usrbin $plan9bin $acmebin)
	var path = $PATH

	for p in $paths {
		if $path == "" {
			path = $p
		} else {
			path = $path+":"+$p
		}
	}

	setenv PATH = $path
	setenv PLAN9 = $plan9
}