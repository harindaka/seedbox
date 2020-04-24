# Seedbox

A Docker Compose file and a collection of convenience scripts to easily setup a seedbox on top of Docker

![screenshot](https://raw.githubusercontent.com/harindaka/seedbox/61d4aed33a6f73f0f8fc69d55eb5a5f20ecc30c1/images/Seedbox.png)

## Features
1. Download torrents with [Transmission](https://transmissionbt.com/) [(Transmission Web Control UI)](https://github.com/ronggang/transmission-web-control)
2. Stream downloaded media with [Jellyfin](https://jellyfin.org/)
3. Browse, download and manage content with [Cloud Commander](https://cloudcmd.io/)
4. Unified menu for quick access
5. All services secured with configurable basic auth credentials

## Platform Support
Tested on Ubuntu 18.04. Should work on other x64 platforms (Windows, MacOS, etc.) with Docker and Docker Compose installed.

## Prerequisites
1. [Docker](https://docs.docker.com/get-docker/)
2. [Docker Compose](https://docs.docker.com/compose/install/). You may run the included convenience script `./docker-compose-install.sh` to install Docker Compose in an Ubuntu based environment.
3. A bash compatible shell to run the included convenience scripts (e.g. via [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10))

## Setting Up
1. Download and extract the latest package from [Releases](https://github.com/harindaka/seedbox/releases)
2. Navigate into the extracted folder 
3. Locate and open the file `globals.sh` and set the basic auth credentials for securing the seedbox services under the variable declarations `g_username` and `g_password`
4. Run the command `./seedbox-up.sh` to start the seedbox services
5. Allow the ports required by the seedbox services in your firewall (Refer next section)
6. Access the Seedbox menu via port 80

## Default Ports
Seedbox requires the following ports to be open. Port numbers mentioned below are their default values. If you customized the ports, use those values instead

1. Seedbox menu e.g.: `80` (default)
2. Transmission e.g.: `4080` (default), `51413/tcp` (default), `51413/udp` (default)
3. Jellyfin e.g.: `5080` (default)
4. Cloud Commander e.g.: `6080` (default)

## Customizing Ports
You can customize the port numbers used by each service inside the `docker-compose.yaml` file. This will require restarting the Seedbox.

## Downloaded Content
All downloaded content and service configurations live inside the `./data` folder

## Stopping and Restarting
Use the commands `./seedbox-stop.sh` and `./seedbox-restart.sh` respectively

## Cleaning up
In order to remove the seedbox docker containers, application configurations and downloaded data (effectively wiping the seedbox and restoring it to its initial state), run the command `./seedbox-delete.sh`

## License
MIT