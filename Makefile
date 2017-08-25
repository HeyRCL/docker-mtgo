
TIMESTAMP=$(shell date +%F)

BASE=panard/mtgo:$(TIMESTAMP)

image:
	docker build -t $(BASE) .

validate:
	docker tag $(BASE) panard/mtgo:latest

push:
	docker push $(BASE)
	docker push panard/mtgo:latest


