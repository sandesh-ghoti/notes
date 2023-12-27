#         Docker

#### Links
1. https://hub.docker.com  // for docker images
2. https://www.docker.com/products/docker-desktop // download docker-desktop and install locally

## commands
1. ```docker pull ubuntu``` to pull specific img
2. ```docker image prune``` to remove all dangling (no use) images
3. ```docker run ubuntu``` to run means **creating new** container
   1. ```docker run -it ubuntu``` to run in interactive mode
   2. ```docker run -it --rm ubuntu``` to run in interactive mode after existing from process container auto deleted
   3. ```docker run -it --rm ubuntu ls``` to run in interactive mode and run specific operation and delete container after execution
4. ```docker ps``` to show all running containers details ```container id, image, commad , created, status, ports, names```
5. ```docker run --detach ubuntu``` to create detach container means to run in background, it will give u id
6. ```docker attach <containerId>``` to attach container
7. ```docker rm <containerName>``` to delete container
8. ```docker kill <containerName>``` to kill container
9. ```docker rm <containerName>``` to delete container
10. ```docker run -it --detach --name <custom name> ubuntu``` to create detach container with custom name
    1. ``` docker run -dit ubuntu``` shortcut for -it --detach
11. ```docker run -it ubuntu bash``` to run terminal/bash
12. ```docker pause <containerId>``` to pause container
13. ```docker unpause <containerId>``` to unpause container
14. ```docker exec <containerId, name>``` to **excute already created container**
15. ```docker build -t <customImageName> <path to docker file>``` to create new custem docker image
16. ```docker rmi <imageName,id> -f``` to remove docker image forcefully

# ubuntu
1. ```ls```
2. ```ps aux``` show all process running
3. ```touch test.txt``` to create new file
4. ```cat path/filename.ext``` to show content from file
5. ```pkill processName``` to kill specific process
6. ```root@user> cat /etc/issue``` to show linux version
7. 
