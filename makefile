install:
	bundle install

COPED_DIR := $(or $(COPED_DIR),./)
rubocop:
	rubocop $(COPED_DIR)

test:
	rake test

.PHONY: test