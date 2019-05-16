default: build

build:
	docker build . -t huntprod/nullmail:latest

push: build
	docker push huntprod/nullmail:latest
