#!/usr/bin/env nash

import "nashcomplete/all"
import "nashlib/all"

import "aliases/cd"
import "aliases/ls"
import "aliases/gohelpers"
import "aliases/githelpers"
import "aliases/docker"
import "aliases/vpn"
import "aliases/irc"
import "aliases/essentials"

# Setup environment variables
setenv GOPATH     = $HOME + "/workspace/go"
setenv GOROOT     = $HOME + "/go"
setenv NASHPATH   = $HOME + "/nash"
setenv NASHROOT   = $HOME + "/nashroot"
setenv PYTHONROOT = $HOME + "/.local/bin"
setenv PATH       = $PATH + ":" + $GOPATH + "/bin:" + $GOROOT + "/bin:" + $PYTHONROOT
setenv SHELL      = "nash"

# only to apply current PROMPT using new cd alias
refreshPrompt()
