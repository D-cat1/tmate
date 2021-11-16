FROM ubuntu:latest

WORKDIR /app
COPY package.json .
RUN apt-get install tmate
COPY . .
RUN bash setup.sh
CMD ["tmate"]
