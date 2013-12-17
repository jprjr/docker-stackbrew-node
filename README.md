docker-stackbrew-node
=============

A [Stackbrew/Ubuntu](https://github.com/tianon/docker-brew-ubuntu/tree/precise)-based image for [Docker](http://docker.io/), with [NodeJS](http://nodejs.org/) installed.

The following useful modules/frameworks are installed:

* [Express](http://expressjs.com/) 
* [CoffeeScript](http://coffeescript.org/)
* [Socket IO](http://socket.io/)
* [Underscore.js](http://underscorejs.org/)
* [forever](https://github.com/nodejitsu/forever)

Currently using Ubuntu 12.04 and NodeJS 0.10.23

The default entrypoint is `forever` - the idea is to mount your projects folder as a volume and run your script using `forever`
