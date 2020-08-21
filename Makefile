
build-server:
	cd ./docker/jenkins-server && \
	docker build -t betoliveirame/jenkins-server . && \
	cd -

run:
	docker-compose up -d
	cd -

removeall:
	docker-compose stop && \
	docker-compose rm && \
	docker rmi -f betoliveirame/jenkins-server
	cd -

rebuild: removeall build-server run
