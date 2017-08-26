### TiddlyWiki 5 Docker

## Prerequisites

Install docker.

## Build your docker

```sh
docker build -t my/tiddlywiki .
```

## Quickstart

Run your docker
```sh
docker run -d -p 8080:8080 my/tiddlywiki
```

Now TiddlyWiki should be running on [http://localhost:8080](http://localhost:8080).

## Keeping the data

The container uses a Docker volume to save the wiki data. In order not
to lose sight of that, I recommend using a local folder for the volume.

```sh
sudo docker run -d -p 8080:8080 -v $(pwd)/.tiddlywiki:/var/lib/tiddlywiki my/tiddlywiki
```

In this example, the folder `$(pwd)/.tiddlywiki` is used for the data.

# Auth

Default auth is `user` / `wiki`

Simply provide the USERNAME and PASSWORD env variables to customise.
