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
17. ```docker run -it --init --publish mcPort:dockerPort customImgName``` to create custom container and ```--publish``` or ```--p```forword docker port on machine port and ```--init``` is for if we want to run container in user interaction means we can stop process by ctrl+c and other function of terminal will work and by closing terminal current process will close, skip for if want process works in background
18.  ```docker run -it --init --P customImgName``` by ```-P```this will be tunnel to random port on machine with expose port of container. so we have to check port no on ```docker ps```
19. ```docker system prune -a``` to remove all stopped containers, all networks not in use, all images who has no one containsers associated and all build cache

### how to create docker image
1. create ```Dockerfile``` // its better to create file in our working directory
2. edit Dockerfile as per required logic
      ```
      FROM dependantDockerImageName
      WORKDIR <working path in container>
      COPY <source of machine> <destination on container>
      RUN <command to run on creating build> //RUN can have multiple times
      ENV <env variables>
      EXPOSE <port no. to expose> // this will be tunnel to random port on machine
      CMD [<command to run after container bootup>,<>,...] // file can only have one time CMD otherwise last CMD will be executed
      ```
   eg. Dockerfile created in basic-node-project dir. and other server code also present in this dir.
      ```
      FROM node
      WORKDIR /developer/nodejs   // all code, logs and other files will be store in this folder
      COPY . /myserver     //copy all server code files from current directory to /developer/nodejs/myserver
      RUN npm ci     //this will install dependencies from json.lock file versions
      CMD ["node", "index.js"]     //execute >node index.js
      ```
3. ```docker build -t <customImageName> <dockerfile path>``` build image from dockerfile
4. run it ```docker run -it --init --publish <mcPort>:<dockerPort> <customImageName>```

### Bind mount
means bind local repo with container wrokDir, means whenever changes happen in local file they will be reflect in container.
When you use a bind mount, a file or directory on the host machine is mounted into a container. The file or directory is referenced by its absolute path on the host machine. 
- build image
- run it ```docker run -it --init --p <mcPort>:<dockerPort> -v <sourceDirPath>:<workDir> <customImageName>```
- eg ```docker run -it --init --p 3002:3000 -v "${pwd}":/developer/nodejs/myserver customImage``` "${pwd}" it will add current working dir(pwd) execute this when we are in myserver dir on terminal

# ubuntu
1. ```ls```
2. ```ps aux``` show all process running
3. ```touch test.txt``` to create new file
4. ```cat path/filename.ext``` to print content from file
5. ```pkill processName``` to kill specific process
6. ```root@user> cat /etc/issue``` to show linux version
7. ```pwd``` to print current working directory
8. ```mkdir``` to create dir.
9. ```rmdir``` to remove dir.
10. ```rm fileName``` to remove specific file
11. ```vim fileName``` to create and edit file
12. ```env``` to print all env variable of system
