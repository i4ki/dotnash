NASHPATH=$(HOME)/.nash
NASHLIBS=$(NASHPATH)/lib

install:
	go get -u github.com/NeowayLabs/nash/cmd/nash
	rm -rf $(NASHPATH)
	mkdir -p $(NASHPATH)
	cp -r init $(NASHPATH)
	cp -r conf $(NASHPATH)
	cp -r common $(NASHPATH)
	cp -r aliases $(NASHPATH)
	git clone git@github.com:katcipis/nashcomplete.git $(NASHLIBS)/nashcomplete

bootstrap:
	go get github.com/katcipis/nash/cmd/nash

