# Version: 0.0.1
FROM nginx:latest
MAINTAINER Andrei Pokhilenko <Pokhilenko.An@khortitsa.com.com>
RUN apt-get update && apt-get install -y nginx

#RUN echo "<html><head><title>My Continue Site</title></head><body>Hello my friend Andy!<hr><br> This my First Continue project!</body></html>"  >/usr/share/nginx/html/index.html
COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

#ENTRYPOINT ["/etc/init.d/nginx start"]
CMD ["nginx"]