# devops_pub

## Repository:

https://github.com/kwpl/devops_pub

## DockerHub:

https://hub.docker.com/repository/docker/kwtest/haproxy/general

```
    docker pull kwtest/haproxy:ssl
```

## Run:

```
    docker-compose -f docker-compose.yaml up -d
```

## Test:

### HaProxy dashboard
```
    curl -k http://127.0.0.1:444
```

### Nginx web server
```
    curl -k https://127.0.0.1:443
```