NAME = bitbrainstech/postgres-backup-restore-s3

build:
	docker build -t $(NAME):10.4 --rm --build-arg POSTGRES_VERSION==10.5-r0 --build-arg ALPINE_VERSION=3.7 .

	docker tag $(NAME):10.4 $(NAME):10.4
	docker tag $(NAME):10.4 $(NAME):latest

push:
	docker push $(NAME):10.4
	docker push $(NAME):latest
