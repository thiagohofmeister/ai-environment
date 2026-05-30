SHELL := /bin/sh

.PHONY: sync restore bootstrap

sync:
	./sync-from-home.sh

restore:
	./restore-to-home.sh

bootstrap:
	./bootstrap.sh

