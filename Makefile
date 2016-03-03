NAME = marteinn/postgres-backup-restore-s3

build:
	docker build -t $(NAME):9.4.6 --rm --build-arg POSTGRES_VERSION==9.4.6-r0 .
	docker build -t $(NAME):9.5.1 --rm --build-arg POSTGRES_VERSION=@edge=9.5.1-r0 .

	docker tag $(NAME):9.4.6 $(NAME):9.4
	docker tag $(NAME):9.5.1 $(NAME):9.5
	docker tag $(NAME):9.5.1 $(NAME):latest

push:
	docker push $(NAME):9.4.6
	docker push $(NAME):9.4
	docker push $(NAME):9.5.1
	docker push $(NAME):9.5
	docker push $(NAME):latest