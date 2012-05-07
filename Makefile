.PHONY: all
all:
	@cd src && $(MAKE) all

.PHONY:	install
install:
	@cd src && $(MAKE) install

.PHONY:	uninstall
uninstall:
	@cd src && $(MAKE) uninstall

.PHONY:	clean
clean:
	@cd src && $(MAKE) clean

