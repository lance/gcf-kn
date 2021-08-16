# Boson Extended Language Packs

This repository contains a Ruby language extensions for Boson using Google Cloud Functions sample Ruby code for CloudEvents, and a Node.js function using faas-js-runtime.

# Ruby Usage

Create a project.
```
func create -r https://github.com/lance/gcf-kn -l ruby -t cloudevent myfunction
func build -p myfunction -v
func run -p myfunction
func deploy -p myfunction
```

# Node.js Usage

Create a project.
```
func create -r https://github.com/lance/gcf-kn -l nodejs -t cloudevent myfunction
func build -p myfunction -v
func run -p myfunction
func deploy -p myfunction
```
