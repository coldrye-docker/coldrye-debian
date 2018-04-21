# vim: noexpandtab:ts=4:sw=4

provider = coldrye
os = debian
release = stretch
tag := $(shell date +"%Y%m%d%H%M%S")
existing_tag := $(shell cat tag)
image = $(os)

.PHONY: clean build fetch-latest push

clean:
	rm -f tag

build: fetch-latest
	docker build -t $(provider)/$(image)\:$(release)-$(tag) .
	docker tag $(provider)/$(image)\:$(release)-$(tag) $(provider)/$(image)\:$(release)-latest
	echo $(tag) > tag

fetch-latest:
	docker pull $(provider)/$(image):$(release)-latest || true

push: tag
	docker push $(provider)/$(image)\:$(release)-$(existing_tag)
	docker push $(provider)/$(image)\:$(release)-latest

