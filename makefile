install:
	bundle install

COPED_DIR := $(or $(COPED_DIR),lib/)
rubocop:
	rubocop $(COPED_DIR)

