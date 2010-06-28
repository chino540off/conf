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

.PHONY: $(ALL)
