#!/usr/bin/env nash

fn startifnot(name, initfn) {
	var _, status <= 9p ls $name

	if $status != "0" {
		$initfn()
	}
}

fn plan9start() {
	fn initsources() {
		9fs sources
	}

	fn initplumb() {
		plumber
	}

	#startifnot("sources", $initsources)
	startifnot("plumb", $initplumb)
}