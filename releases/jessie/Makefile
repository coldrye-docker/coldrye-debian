# vim: noexpandtab:ts=4:sw=4

provider = coldrye
os = debian
release = jessie
tag := $(shell date +"%Y%m%d%H%M%S")
image = $(os)

.PHONY: build

build: fetch-latest
	docker build -t $(provider)/$(image)\:$(release)-$(tag) .
	docker tag $(provider)/$(image)\:$(release)-$(tag) $(provider)/$(image)\:$(release)-latest

fetch-latest:
	docker pull $(provider)/$(image):$(release)-latest || true

push: build
	docker push $(provider)/$(image)\:$(release)-$(tag)
	docker push $(provider)/$(image)\:$(release)-latest

