FROM node:9.4.0
MAINTAINER Dan Kuida < dan@kuida.org >
ENV REFRESHED_AT 2017-09-02


EXPOSE 8080


RUN mkdir -p /var/www
WORKDIR /var/www

COPY . /var/www


RUN npm install -D .

RUN npm install -g http-server

CMD ["npm", "start"]
