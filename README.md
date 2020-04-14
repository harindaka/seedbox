# Seedbox

A Docker Compose file and a collection of convenience scripts to easily setup a seedbox on top of Docker

## Features
1. Download torrents with [Transmission](https://transmissionbt.com/)'s [Combustion web interface](https://github.com/Secretmapper/combustion)
2. Stream downloaded media with [Jellyfin](https://jellyfin.org/)
3. Browse, download and manage content with [Cloud Commander](https://cloudcmd.io/)
4. Unified menu for quick access
5. All services secured with configurable basic auth credentials

## Platform Support
Tested on Ubuntu 18.04. Should work on any platform (Windows, MacOS, etc.) with Docker and Docker Compose installed.

## Prerequisites
1. Docker
2. Docker Compose. You may run the included convenience script `./docker-compose-install.sh` to install Docker Compose in an Ubuntu based environment.
3. A bash compatible shell to run the included convenience scripts (e.g. via Windows Subsystem for Linux)

## Setting Up
1. Clone this repo
2. `cd seedbox`
3. Locate and open the file `globals.sh` and set the basic auth credentials for securing the seedbox services under the variable declarations `g_username` and `g_password`
4. Run the command `./seedbox-secure.sh` to update the seedbox with the credentials entered in the previous step.
5. Run the command `./seedbox-up.sh` to start the seedbox services
6. Allow the ports required by the seedbox services in your firewall (Refer next section)
7. Access the Seedbox menu via port 80

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