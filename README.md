# docker_transmission
docker transmission


#### build

```shell
$ docker build -t transmission:1 --platform linux/arm .
```


#### run or compose 

```shell
# run
$ docker run -it -p 9091:9091 -v /my_directory/share:/root/transmission/share --name transmission --platform linux/arm transmission:1 /bin/ash 
```

```shell
# compose
$ docker compose up -d
```