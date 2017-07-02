NASHPATH=$(HOME)/nash
NASHLIBS=$(NASHPATH)/lib

clean:
	rm -rf $(HOME)/.bashrc
	rm -rf $(NASHPATH)/init
	rm -rf $(NASHPATH)/conf
	rm -rf $(NASHPATH)/common
	rm -rf $(NASHPATH)/aliases
	rm -rf $(NASHLIBS)/nashcomplete

install: clean
	cp -r bashrc $(HOME)/.bashrc
	cp -r init $(NASHPATH)
	cp -r conf $(NASHPATH)
	cp -r common $(NASHPATH)
	cp -r aliases $(NASHPATH)
	git clone https://github.com/NeowayLabs/nashcomplete.git $(NASHLIBS)/nashcomplete
