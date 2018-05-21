# openshift-nginx

This repository contains the Dockerfile and the nginx configurations used to generate a container image based on the official [nginx:alpine image](https://hub.docker.com/_/nginx/), slighty modified to run as a Red Hat OpenShift application.

You can easily build this image locally after checking out, running:

    $ docker image build -t openshift-nginx:alpine .

An public container image is public available on Docker Hub [here](https://hub.docker.com/r/mcappadonna/openshift-nginx/), so if you just want to try this image, you can just pull it from your computer

    $ docker image pull mcappadonna/openshift-nginx:alpine

Or try it on OpenShift cluster (or minishift, as you prefer) as a new docker-image based application

    $ oc new-app --name testnginx --docker-image=mcappadonna/openshift-nginx:alpine
