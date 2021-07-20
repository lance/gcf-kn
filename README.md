# Boson Extended Language Packs

This repository contains language extensions for Boson. It consists
of three parts.

* A Ruby buildpack based on the CNCF documentation example, augmented to use Google Cloud Functions Framework as the invocation framework
* A builder based on the CNCF example builder that knows about this buildpack
* A Ruby function template that is a copy of the Google Cloud Functions example Ruby code for CloudEvents

# Building

Create the stack images.
```
docker build stack -t quay.io/boson/ex-stack-base:bionic --target base
docker build stack -t quay.io/boson/ex-stack-build:bionic --target build
docker build stack -t quay.io/boson/ex-stack-run:bionic --target run
```

Create the builder image.
```
pack builder create gcf-kn --config ./builder.toml
```

Copy the templates. (Ultimately, this should be handled with a URI in func CLI)
```
cp -R ruby ~/.config/func/repositories/boson/
```

Create a project.
```
func create -l ruby -t boson/cloud-function myfunction
func build -p myfunction
func run -p myfunction
```
