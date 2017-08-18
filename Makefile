NASHLIBS=$(NASHPATH)/lib

clean:
	rm -rf $(NASHPATH)/init.sh
	rm -rf $(NASHPATH)/conf
	rm -rf $(NASHPATH)/aliases
	rm -rf $(NASHLIBS)/nashcomplete

install: clean
	cp -r init.sh $(NASHPATH)
	cp -r conf $(NASHPATH)
	cp -r aliases $(NASHPATH)
	git clone https://github.com/NeowayLabs/nashcomplete.git $(NASHLIBS)/nashcomplete
