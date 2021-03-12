# Docker App for Get SH>IT Done! for Windows

Get SH>IT Done Carrousel - Docker App (2021)


## Install Docker and GIT on Windows
(From this link)

> https://docs.docker.com/docker-for-windows/install/

(From this link)

> https://git-scm.com/download/win

> docker info

> docker --version

> git --version



## Download the code and Build the container
> git clone https://github.com/Juli-BCN/get-shit-done-docker-win.git

> cd get-shit-done-docker-win

> docker build -t get-sh-it-done-win .

> docker images



## Run, Test & Stop the Docker container
> docker run -it -d -p 80:80 get-sh-it-done-win

> Invoke-RestMethod -Uri http://localhost -Method Get

> docker ps

> :eyeglasses: docker stop *CONTAINER_ID*



## Tag & Upload Container to DockerHub
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker push *TARGET_IMAGE:TARGET_TAG*


Like:
> docker image tag get-sh-it-done-win:latest julibcn/get-sh-it-done-win:latest

> docker login

> docker push julibcn/get-sh-it-done-win:latest



## Tag & Upload Container to GitHub Packages
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker push ghcr.io/*OWNER_NAME/IMAGE_NAME:latest*


Like:
> docker image tag get-sh-it-done-win:latest ghcr.io/juli-bcn/get-sh-it-done-win:latest

> docker login ghcr.io

> docker push ghcr.io/juli-bcn/get-sh-it-done-win:latest



## Run the image from DockerHub
> docker run -d -p 80:80 julibcn/get-sh-it-done-win:latest



## Run the image from GitHub Packages
> docker run -d -p 80:80 ghcr.io/juli-bcn/get-sh-it-done-win:latest