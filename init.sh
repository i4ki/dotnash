#!/usr/bin/env nash

import "nashcomplete/all"
import "nashlib/all"

import "aliases/cd"
import "aliases/go"
import "aliases/git"
import "aliases/vpn"
import "aliases/vault"
import "aliases/essentials"

# Setup environment variables
setenv GOPATH     = $HOME + "/workspace/go"
setenv GOROOT     = $HOME + "/go"
setenv NASHPATH   = $HOME + "/nash"
setenv NASHROOT   = $HOME + "/nashroot"
setenv PYTHONROOT = $HOME + "/.local/bin"
setenv PATH       = $PATH + ":" + $GOPATH + "/bin:" + $GOROOT + "/bin:" + $PYTHONROOT
setenv SHELL      = "/usr/bin/env nash"

# only to apply current PROMPT using new cd alias
refreshPrompt()
