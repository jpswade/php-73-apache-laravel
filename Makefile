requirements:
	brew install docker

build:
	docker build . -t php-73-apache-laravel
	docker tag php-73-apache-laravel jameswade/php-73-apache-laravel
	docker push jameswade/php-73-apache-laravel:latest
