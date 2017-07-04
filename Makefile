
.PHONY: all tensorflow 
tensorflow:
	docker build -t tensorflowgym tensorflowgym
start: 
	docker run -p 8888:8888 -p 80:80 -p 5900:5900 -p 15900:15900 -v $(pwd):/notebooks/workspace tensorflowgym
publish: 
	docker tag tensorflowgym rmeertens/tensorflowgym
	docker push rmeertens/tensorflowgym

all: tensorflow 
