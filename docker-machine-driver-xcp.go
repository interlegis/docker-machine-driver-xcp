//This file was modified from the original work, https://github.com/xenserver/docker-machine-driver-xenserver

package main

import (
	"github.com/docker/machine/libmachine/drivers/plugin"
	"github.com/interlegis/docker-machine-driver-xcp/xcp"
)

func main() {
	plugin.RegisterDriver(xcp.NewDriver())
}
