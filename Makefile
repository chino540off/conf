ALL= awesome git urxvt vim x zsh

install: $(ALL)

awesome:
	@cd awesome && ./install.sh
git:
	@cd git && ./install.sh
urxvt:
	@cd urxvt && ./install.sh
vim:
	@cd vim && ./install.sh
zsh:
	@cd zsh && ./install.sh
x:
	@cd x && ./install.sh

clean:
	@cd vim && ./clean.sh

dist: clean
	@cd .. && tar cjf conf.tar.bz2 conf && mv conf.tar.bz2 conf

.PHONY: $(ALL)
