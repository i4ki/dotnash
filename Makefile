NASH_PATH=$(HOME)/.nash

install:
	rm -rf $(NASH_PATH)
	mkdir -p $(NASH_PATH)
	cp -r init $(NASH_PATH)
	cp -r conf $(NASH_PATH)
	cp -r common $(NASH_PATH)
	cp -r aliases $(NASH_PATH)

bootstrap:
	go get github.com/katcipis/nash/cmd/nash
