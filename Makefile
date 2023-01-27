server:
	./server.js

check-docker:
	docker info > /dev/null 2>&1

build-docker-image: check-docker
	docker build -t riscv/landscape .

run-server-on-docker: build-docker-image
	docker run -ti --rm -p 8001:8001 riscv/landscape

clean:
	docker rmi -f riscv/landscape