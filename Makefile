ALL= awesome urxvt vim zsh

install: $(ALL)

awesome:
	@cd awesome && ./install.sh
urxvt:
	@cd urxvt && ./install.sh
vim:
	@cd vim && ./install.sh
zsh:
	@cd zsh && ./install.sh

.PHONY: $(ALL)
