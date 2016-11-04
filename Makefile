ESLINT = node_modules/.bin/eslint
NPM = npm
XYZ = node_modules/.bin/xyz --repo git@github.com:davidchambers/remember-bower.git


.PHONY: all
all:


.PHONY: lint
lint:
	$(ESLINT) --config node_modules/sanctuary-style/eslint-es3.json --env es3 --env node -- bin/remember-bower


.PHONY: release-major release-minor release-patch
release-major release-minor release-patch:
	@$(XYZ) --increment $(@:release-%=%)


.PHONY: setup
setup:
	$(NPM) install


.PHONY: test
test:
