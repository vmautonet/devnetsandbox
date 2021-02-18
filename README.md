# DEVNET SANDBOX

Docker image based on Ubuntu, containing:
- iproute2 
- ssh 
- python3
- python3-pip
- git 
- zsh 
- curl 
- nano

Feel free to add your own apps. Also contains personalized .zshrc, which is set as default shell

Python packages:
- virtualenv
- xmltodict
- requests
- netmiko
- ansible
- nornir
- ncclient

Feel free to add your own packages before building by editing the [requirements.txt](requirements.txt)

You can map your own local development directory in the .env file:
```
LOCALWORKDIR=< put your devel folder path here-
```

Build with
```
docker-compose up -d
```
