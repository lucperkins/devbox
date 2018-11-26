UBUNTU_VERSION = 18.04
LOCAL          = devbox
VERSION        = $(shell cat VERSION)
IMAGE          = lucperkins/$(LOCAL):$(VERSION)
LATEST         = lucperkins/$(LOCAL):latest

test:
	echo $(IMAGE)

build:
	docker build \
	--tag $(LOCAL) \
	--build-arg ubuntuVersion=$(UBUNTU_VERSION) \
	.

tag:
	docker tag $(LOCAL) $(IMAGE) && docker tag $(LOCAL) $(LATEST)

push:
	docker push $(IMAGE) && docker push $(LATEST)

publish: build tag push