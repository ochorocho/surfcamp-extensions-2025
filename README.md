# TYPO3 Surfcamp Extension 2025

This project will combine all projects created during the TYPO3 SurfCamp 2025

> [!NOTE]
> This is currently in a experimental state!
> Once the extensions are extracted from the project repository
> into a dedicated repository for the extension it can and
> hopefully will be installed and configured
>

## Credentials

- Backend: <code-space-url or see PORTS in terminal>/typo3
- Username: `admin`
- Password: `John3:16`

### Frontend

- Login page: <code-space-url or see PORTS in terminal>/club/login
- Username: `info@example.com`
- Password: `Password.1`

## Extensions

Installed

* MemSy: https://github.com/TYPO3incubator/ext-memsy/
* Event Wave: https://github.com/TYPO3incubator/event-wave/

Wating for a dedicated repository

* Restaurant: https://github.com/TYPO3incubator/surfcamp-2025-team1/tree/develop/packages
* Shopping Cart: https://github.com/TYPO3incubator/surfcamp-2025-team2/
* API aggregation: https://github.com/TYPO3incubator/surfcamp-2025-team3/tree/main/packages/surfcamp-base
* Surfey: https://github.com/TYPO3incubator/surfcamp-2025-team4/

## GitHub Codespace

To share the Codespace go to the "PORTS" panel next to "TERMINAL". Right-click the desired port (`3333` for the Website) and select "Port Visibility -> Public". Once the port is "public" anyone can access this
port with the given "Forwarded Address".

## Local requirements

* Having Docker installed locally (see https://docs.docker.com/get-docker/)
* VS Code with the devcontainer extension enabled (see https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

# Development notes

* Use ` .devcontainer/db-export.sh` to export the current database.
  The exported SQL file will be used to import initial data.
* The Apache2 webserver listens on port `3333` due to issues
  with port AutoForwarding in codepsaces when a port is mapped e.g. `3333:80` (`appPort`).
* The scheduler CronJob will run every minute
* Use `service typo3-message-consumer <start|stop|status>` to manage the message queue service
