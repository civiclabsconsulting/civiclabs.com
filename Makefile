all:
	@cd src && jekyll build
	@rm -rf ./docs
	@cp -R ./src/_site ./docs
