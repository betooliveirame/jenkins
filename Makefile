
build-server:
	cd ./docker/jenkins-server && \
	docker build -t betoliveirame/jenkins-server . && \
	cd -

run:
	docker-compose up --remove-orphans

removeall:
	docker-compose stop && \
	docker-compose rm
