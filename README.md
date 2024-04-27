# fp_api
Food Plan Generator API

# Operation

Run:
```sh
podman-compose up --build-arg USERNAME=$(id -un) --build-arg GROUPNAME=$(id -gn) --build-arg USERID=$(id -u) --build-arg GROUPID=$(id -g)
```

Get a shell inside the container:

```sh
podman exec -it <container name> /bin/sh
```

Shutdown
```sh
podman-compose down
```
