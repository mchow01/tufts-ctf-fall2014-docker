# Acknowledgement
The configuration files and scripts were taken from John Fink's work at https://github.com/jbfink/docker-wordpress. Many thanks for your contributions John!

# Overview
This was the Capture the Flags (CTF) game for my _Introduction to Computer Security_ class at Tufts University in fall 2014 semester.

In this traditional game, you will be finding and exploiting vulnerabilities in a series of applications to gain access to information you should not have access to. The goal is to find the "flags" placed on the server.

# Requirements
Docker

# Pulling the Image From Docker Hub
`docker pull mchow01/tufts-ctf-fall2014` (depending on your Docker configuration, `sudo` may be required)

Docker Hub URL: https://registry.hub.docker.com/u/mchow01/tufts-ctf-fall2014/

# Running the Docker Image
`docker run --name ctf -d -p 80:80 mchow01/tufts-ctf-fall2014`

# Playing the Game
Assuming that the Docker image is running (verify by running `docker ps`) and that port 80 is used, go to `http://localhost/` using a web browser.  It can take 1 to 2 minutes to get the game server up and running.

## A Flag
In the style of many Security Capture The Flag games, the format of a flag will look like this: `key{flag}`. Examples: `key{somelongstringthatrepresentshteflag}` or `key{334359b051f4dda20937055605b3706dfe91d6c8}`). Each flag will worth a certain value: 100 points, 200 points, and 300 points. Each team will be given a unique key to submit flags.

## Submitting a Flag
Go to `http://localhost/scoreboard/`, use `general` (Team 13) as the submission key as you are playing as a member of the general public.

## Changes to Game
* Challenge 9 ("Not Global Thermal Nuclear War") no longer works as it's game server has been turned off.  Therefore, here is the base64 of the flag: `a2V5e2U2NmUyODU1MmU3ZTcxYzNjYTVmYTA0NTQwMjEzYmI3YzA3NDRmMDN9`

## Some Vulnerabilities Found In This Game
* SQL injection
* Cross-site scripting
* Password cracking
* Cookie tampering
* Directory traversal
* Security-by-obscurity

# Stopping Running the Docker Image
1. Get the running container ID by running `docker ps`
2. Run `docker stop <the container ID>`
3. Run `docker rm -f <the container ID>`

# Building the Docker Image
`docker build -t mchow01/tufts-ctf-fall2014 .`
