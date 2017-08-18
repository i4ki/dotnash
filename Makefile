NASHLIBS=$(NASHPATH)/lib

install: clean
	cp -r init.sh $(NASHPATH)
	cp -r aliases $(NASHPATH)
	git clone https://github.com/NeowayLabs/nashcomplete.git $(NASHLIBS)/nashcomplete
	git clone https://github.com/NeowayLabs/nashlib.git $(NASHLIBS)/nashlib

clean:
	rm -rf $(NASHPATH)/init.sh
	rm -rf $(NASHPATH)/aliases
	rm -rf $(NASHLIBS)/nashcomplete
	rm -rf $(NASHLIBS)/nashlib
