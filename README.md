# docker-machine-driver-xcp
This is the XCP-ng driver plugin for Docker Machine. It allows the
orchestration of machines on XCP-ng (all versions) and probably compatible with Citrix XenServer 6.5SP1 or later.

This work is derived from https://github.com/xenserver/docker-machine-driver-xenserver.

# Installation from binary

The installation steps are:

1. If not done already - download the Docker Machine binary for your OS and architecture
2. If not done already - move the binary to your PATH.
3. Download the driver archive for your OS and architecture.
4. Extract the archive
5. Move the driver binary to your PATH, so it can be found by docker-machine.

# Installation from source
Following the installation of Golang and Docker Machine, you can install the
docker-machine-xcp-driver:
```bash
go get github.com/interlegis/docker-machine-driver-xcp
```

# Usage
The usual Docker Machine commands apply:
```bash
docker-machine create -d xcp --xcp-server myip --xcp-username myusername --xcp-password mypassword mynewmmachine
docker-machine env mynewmmachine
```


# CLI Options:

 - `--xcp-vcpu-count`: vCPU number for docker VM.
 - `--xcp-memory-size`: Size of memory for Docker VM (in MB).
 - `--xcp-boot2docker-url`: URL for boot2docker ISO image.
 - `--xcp-server`: **required for create** XenServer hostname/IP for docker VM.
 - `--xcp-disk-size`: Size of disk for Docker VM (in MB).
 - `--xcp-username`: **required** XenServer Username.
 - `--xcp-password`: **required** XenServer Password.
 - `--xcp-network-label`: Network label where the docker VM will be attached
 - `--xcp-sr-label`: SR label where the docker VM will be attached.
 - `--xcp-host-label`: Host label where the docker VM will be run.
 - `--xcp-upload-timeout`: Timeout uploading VDI.
 - `--xcp-wait-timeout`: Timeout wating for VM start.
 - `--xcp-os-template`: XCP template name for the new VM.
 - `--xcp-os-username`: Username used by docker-machine to SSH to the new VM.
 - `--xcp-coreos-configdrive`: Whether to use a CoreOS ConfigDrive or (default) a generic one. 

# Environment variables and default values:

| CLI option                  | Environment variable     | Default                      |
|-----------------------------|--------------------------|------------------------------|
| `--xcp-vcpu-count`          | `XCP_VCPU_COUNT`         | `1`                          |
| `--xcp-memory-size`         | `XCP_MEMORY_SIZE`        | `2048`                       |
| `--xcp-disk-size`           | `XCP_DISK_SIZE`          | `5120`                       |
| `--xcp-boot2docker-url`     | `XCP_BOOT2DOCKER_URL`    | *boot2docker URL*            |
| `--xcp-server`              | `XCP_SERVER`             | -                            |
| `--xcp-host-label`          | `XCP_HOST_LABEL`         | -                            |
| **`--xcp-username`**        | `XCP_USERNAME`           | -                            |
| **`--xcp-password`**        | `XCP_PASSWORD`           | -                            |
| `--xcp-network-label`       | `XCP_NETWORK_LABEL`      | -                            |
| `--xcp-sr-label`            | `XCP_SR_LABEL`           | -                            |
| `--xcp-upload-timeout`      | `XCP_UPLOAD_TIMEOUT`     | `300`                        |
| `--xcp-wait-timeout`        | `XCP_WAIT_TIMEOUT`       | `1800`                       |
| `--xcp-os-template`         | `XCP_OS_TEMPLATE`        | `Other install media`        |
| `--xcp-os-username`         | `XCP_OS_USERNAME`        | `docker`                     |
| `--xcp-coreos-configdrive`  | `XCP_COREOS_CONFIGDRIVE` | `false`                      |
