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