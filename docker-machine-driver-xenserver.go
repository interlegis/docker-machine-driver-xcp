package main

import (
	"github.com/docker/machine/libmachine/drivers/plugin"
	"github.com/interlegis/docker-machine-driver-xenserver/xenserver"
)

func main() {
	plugin.RegisterDriver(xenserver.NewDriver())
}
