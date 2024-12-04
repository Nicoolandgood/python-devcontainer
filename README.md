# Python devcontainer

This project is a devcontainer based boilerplate for Python projects.

## Usage

### VS Code
Open your project inside vs-code and click the bottom-left button. 
It will open a menu from which you can select `Reopen in container`.
Wait for your IDE to build the container and you should be good to go.

### Docker compose
You can also directly start the app container by running:
```sh
docker compose up -d --build
```

And then access its shell with:
```sh
docker compose exec app bash
```

## Configuration

### `.env`

This file is automaticaly picked up by `docker compose` and is used to modify its behavior.
First, copy the `.env.template` file to `.env`:
```sh
cp .env.template .env
```
Then edit its content according your needs.

### `Dockerfile`

It's the base image file of the app service. Its default behavior is to create a simple development environment with the latest stable Python version. You can directly edit it to add some system dependencies or the Python version.

More info in the [dockerfile official documentation](https://docs.docker.com/reference/dockerfile/).

### `docker-compose.yaml`

This file is used to create the services your project needs. By default, it only creates an `app` service starting a "sort-of" Python virtual environment. You can add as much services as you like inside this file (e.g. a PostgreSQL database or a Redis cache).

More info in the [docker compose official documentation](https://docs.docker.com/compose/).

### `.devcontainer.json`

It contains the settings of your decontainer environment. You can change your dev behavior by editing it.
For VS Code, it can also install extensions.

More info in the [devcontainer documentation](https://containers.dev/implementors/json_reference/).