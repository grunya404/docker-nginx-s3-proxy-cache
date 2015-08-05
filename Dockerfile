FROM nginx:1.9
MAINTAINER Hector Castro hectcastro@gmail.com

COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
