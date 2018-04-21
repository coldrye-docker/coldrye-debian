# vim: noexpandtab:ts=4:sw=4

releases = releases/*


.PHONY: help init clean build push

help:
	@echo "available targets are help, init, clean, build(init), push"

init:
	@git submodule init
	@git submodule update

clean:
	@for release in $(releases); do \
	  $(MAKE) -C $$release clean; \
	done

build: init
	@for release in $(releases); do \
	  $(MAKE) -C $$release build; \
	done

push:
	@for release in $(releases); do \
	  $(MAKE) -C $$release push; \
	done

