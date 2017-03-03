# Apache Jena Fuseki 3 Docker Image

This repository contains a Dockerfile for building an image with the latest version of **Apache Jena Fuseki 3** supported by [Knora](https://github.com/dhlab-basel/Knora).

Fuseki is the triplestore from the Apache Jena project (http://https://jena.apache.org). Apache Jena license applies.


## Usage


### Docker Hub

```
$ docker run --rm -it -p 3030:3030 dhlabbasel/fuseki
```


### Local Build

```
$ docker build -t fuseki .
$ docker run --rm -it -p 3030:3030 fuseki
```

Do not forget the '.' in the first command.

 - ``--rm`` removes the container as soon as you stop it
 - ``-p`` forwards the exposed port to your host (or if you use boot2docker to this IP)
 - ``-it`` allows interactive mode, so you see if something get's deployed


Above, we create and start a transient container (``--rm`` flag). To create a container that we can stop and start again
at a later time, follow the following steps:

```
  $ docker build -t fuseki .
  $ docker run --name fuseki -d -t -p 3030:3030 fuseki
  
  (to see the console output, attach to the container; to detach press Ctrl-c)
  $ docker attach fuseki
    
  (to stop the container)
  $ docker stop fuseki
  
  (to start the container again)
  $ docker start fuseki
  
  (to remove the container; needs to be stopped)
  $ docker rm fuseki
```

 - ``--name`` give the container a name
 - ``-d`` run container in background and print container ID
 - ``-t`` allocate a pseudo TTY, so you see the console output
 - ``-p`` forwards the exposed port to your host