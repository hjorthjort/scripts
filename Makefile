default: install

install: init brewup striptags stripblanklines git-history-rewrite stringdiff trunc
	@echo "\nAll scripts successfully installed!"
	@echo "Please add $(shell pwd)/bin to your PATH variable"

init: 
	@rm -rf bin
	@mkdir bin

brewup:
	@echo "Installing brewup ..."
	@cd bin && ln -s ../shell/brewup.sh brewup
	@echo "brewup installed"	

striptags:
	@echo "Installing striptags ..."
	@gcc -o striptags C/striptags.c
	@mv striptags bin/
	@echo "striptags installed"

stripblanklines: 
	@echo "Installing stripblanklines ..."
	@gcc -o stripblanklines C/stripblanklines.c
	@mv stripblanklines bin/
	@echo "stripblanklines installed"

git-history-rewrite: 
	@echo "Installing git-history-rewrite ..."	
	@cd bin && ln -s ../shell/git-history-rewrite.sh git-history-rewrite
	@echo "git-history-rewrite installed"	

stringdiff:
	@echo "Installing stringdiff ..."	
	@cd bin && ln -s ../shell/stringdiff.sh stringdiff
	@echo "stringdiff installed"	

trunc:
	@echo "Installing trunc ..."
	@cd bin && ln -s ../shell/trunc.sh trunc
	@echo "trunc installed"	

