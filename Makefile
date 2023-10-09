
IMG ?= swr.cn-north-4.myhuaweicloud.com/hfbbg4/go-cross-helloworld:v1


all:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/helloworld cmd/main.go


build-docker:
	DOCKER_BUILDKIT=0 docker build  -t ${IMG} .

deploy-k8s:
	kubectl delete deployment go-cross-helloworld
	kubectl create deployment go-cross-helloworld --image=${IMG} --replicas=1 

#kubectl create deployment go-cross-helloworld --image=${IMG} --replicas=1 --dry-run -oyaml



