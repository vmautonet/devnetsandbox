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

### Personalization

You can map your own local development directory in the .env file:
```
LOCALWORKDIR=< put your devel folder path here-
```

You can find the devel folder under /CODE on the docker container

### Build with
```
docker-compose up -d
```
### Get in
You can use both docker and SSH to get in
> IT IS STRONGLY ADVISED TO CHANGE THE DEFAULT ROOT PASSWORD. 
> IT MIGHT BE EVEN BETTER TO CREATE A NEW ACCOUNT... BUT IT'S A DEV BOX, SO ROOT WORKS FOR ME
