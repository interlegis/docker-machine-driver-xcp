#This file was modified from the original work, https://github.com/xenserver/docker-machine-driver-xenserver

.PHONY: build
build:
	GO111MODULE=on go get ./...
	go build ./...

.PHONY: install
	GO111MODULE=on go get ./...
	go install ./...

.PHONY: clean
clean:
	rm -f docker-machine-driver-xcp \
		  docker-machine-driver-xcp_darwin-386.tar.gz \
		  docker-machine-driver-xcp_darwin-amd64.tar.gz \
		  docker-machine-driver-xcp_linux-386.tar.gz \
		  docker-machine-driver-xcp_linux-amd64.tar.gz \
		  docker-machine-driver-xcp_windows-386.zip \
		  docker-machine-driver-xcp_windows-amd64.zip

.PHONY: release
release:
	GO111MODULE=on go get ./...
	# Unix
	for arch in 386 amd64 ; do \
		for os in darwin linux ; do \
			GOOS=$$os GOARCH=$$arch go build -o docker-machine-driver-xcp; \
			tar -cvzf docker-machine-driver-xcp_$$os-$$arch.tar.gz docker-machine-driver-xcp; \
			rm -f docker-machine-driver-xcp; \
		done \
	done
	# Windows
	for arch in 386 amd64 ; do \
		GOOS=windows GOARCH=$$arch go build -o docker-machine-driver-xcp.exe; \
		zip docker-machine-driver-xcp_windows-$$arch.zip docker-machine-driver-xcp.exe; \
		rm -f docker-machine-driver-xcp; \
	done
