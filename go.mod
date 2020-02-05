module github.com/interlegis/docker-machine-driver-xcp

go 1.13

require (
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78 // indirect
	github.com/Sirupsen/logrus v0.0.0-00010101000000-000000000000 // indirect
	github.com/diskfs/go-diskfs v0.0.0-20200202142013-3bd1f70075f0
	github.com/docker/docker v1.13.1 // indirect
	github.com/docker/machine v0.16.2
	github.com/interlegis/go-xenserver-client v0.0.0-20200205122209-75fb1de1430a
	github.com/nilshell/xmlrpc v0.0.0-20140129215208-41b9444050f7
	github.com/xenserver/go-xenserver-client v0.0.0-20160824133036-86a0f30ec158
	golang.org/x/net v0.0.0-20200202094626-16171245cfb2
)

replace github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.4.2
