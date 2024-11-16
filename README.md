# My Go Deployment project

Hello! This is my take on a pipeline that builds a Golang app, creates a docker image, then deploys a container to run the Go app.

The first stage involves pulling the YAML pipeline template from the .buildkite directory. From there, the application is built and a docker image is uploaded locally in the agent. Next, a block stage is implemented to ask the user to enter their name (or use the default name too, if you'd like).

Another block stage is implemented as an "Approval step." This is a simulation of what could happen in a production DevOps environment which may need an approval from a team lead, a Release Engineer, etc. If you choose yes, then the pipeline will continue and execute a shell script to run the Go app inside a docker container. The end result should be "Hello (name)!" If you choose no, then the pipeline will throw an error and fail, as the build was not approved to proceed.

There are some files here that are unused - I kept them as relics of my (many) trials and errors. Feel free to reach out if you have any questions!

---------------------------------------------------------------------------------------------------------------------------------

# Go example project

[![Go Reference](https://pkg.go.dev/badge/golang.org/x/example.svg)](https://pkg.go.dev/golang.org/x/example)

This repository is a fork of the basic Golang example repo, trimmed down to contain a single example.

## Build the project

```
$ cd hello
$ go build
```

A simple application that takes a command line argument, and then returns it to you in a string:

```
$ chmod +x hello/hello
$ ./hello/hello John Doe
```

The above will return 'Hello, John Doe!'
