NAME=udemy-ml-api
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://WHddcD2s2QosM6pQpsLC@pypi.fury.io/sachinumrao1512/ -t registry.heroku.com/sachins-ml-demo/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/sachins-ml-demo/web:latest
