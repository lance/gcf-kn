# Boson Extended Language Packs

This repository contains a Ruby language extensions for Boson using Google Cloud Functions sample Ruby code for CloudEvents.

# Usage

Create a project.
```
func create -r https://github.com/lance/gcf-kn -l ruby -t cloud-function myfunction
func build -p myfunction -v
func run -p myfunction
func deploy -p myfunction
```
