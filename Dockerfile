FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y pip git rsync && apt-get clean

RUN pip install git+https://github.com/istepaniuk/larks-dockerize

ENTRYPOINT ["/usr/local/bin/dockerize"]


