# PHP 7.3 + Apache for Laravel

This is a Dockerfile created from an earilier version, for PHP 5.6 ([Dockerfile-php56](https://gist.github.com/jpswade/9a45b66111adaa4222f4652c586616be)).

## Prerequisites

Install Docker Desktop (aka Docker for Mac)

- `brew install docker`

Docker Hub Login

- [Signup to Docker Hub](https://hub.docker.com/signup)
- `docker login`

## Building

- `docker build . -t php-73-apache-laravel`

## Running

- Shell: `docker run -it php-73-apache-laravel bash`
- Server: `docker run -d -p 80:80 --name my-laravel-app -v "$PWD/public":/var/www/html php-73-apache-laravel`

## Maintainer

- [James Wade](https://wade.be/)
