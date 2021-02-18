# DEVNET SANDBOX

Docker image based on Ubuntu, containing:
> iproute2 
> ssh 
> python3
> python3-pip
> git 
> zsh 
> curl 
> nano

Python packages:
> virtualenv
> xmltodict
> requests
> netmiko
> ansible
> nornir
> ncclient

You can map your own local development directory in the .env file:
```
LOCALWORKDIR=< put your devel folder path here>
```

Build with
```
docker-compose up -d
```
