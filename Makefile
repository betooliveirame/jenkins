
build:
	cd ./docker/jenkins-server && \
	docker build -t betoliveirame/jenkins-server . && \
	cd -

run:
	docker-compose up -d
	cd -

remove:
	docker-compose stop && \
	docker-compose rm && \
	docker rmi -f betoliveirame/jenkins-server
	cd -

install: build run

rebuild: remove build run
