imagetag1 ?= index.alauda.cn/alaudaorg/go-go-microservice-1
imagetag2 ?= index.alauda.cn/alaudaorg/go-go-microservice-2
build:
	GOOS=linux CGO_ENABLE=0 go build -o service1/service1 -gcflags "-N -l" service1/main.go
	GOOS=linux CGO_ENABLE=0 go build -o service2/service2 -gcflags "-N -l" service2/main.go
	docker build -t ${imagetag1} service1
	docker build -t ${imagetag2} service2

dist:
	docker push ${imagetag1}
	docker push ${imagetag2}