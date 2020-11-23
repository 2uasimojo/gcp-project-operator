# We use vendored deps. Boilerplated rules pick up this var. This has to
# be done before including boilerplate's make libs.
GOFLAGS_MOD := -mod=vendor

include boilerplate/generated-includes.mk

# TODO: I don't think we need these.
-WATCH_NAMESPACE?=""
export GO111MODULE=on

# Extend Makefile after here

# TODO: Once boilerplate-standard codecov is set up:
# - Remove ./coverage_badge.png
# - Edit the `Go Coverage` link in README.md
# - Remove this override
coverage:
	go get github.com/jpoles1/gopherbadger
	gopherbadger

.PHONY: boilerplate-update
boilerplate-update:
	@boilerplate/update
