NASHPATH=$(HOME)/.nash
NASHLIBS=$(NASHPATH)/lib

install:
	rm -rf $(NASHPATH)
	mkdir -p $(NASHPATH)
	cp -r init $(NASHPATH)
	cp -r conf $(NASHPATH)
	cp -r common $(NASHPATH)
	cp -r aliases $(NASHPATH)
	git clone git@github.com:NeowayLabs/nashcomplete.git $(NASHLIBS)/nashcomplete
