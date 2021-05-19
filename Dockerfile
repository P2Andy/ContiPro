# Version: 0.0.1
FROM nginx:latest
MAINTAINER Andrei Pokhilenko <Pokhilenko.An@khortitsa.com.com>
# 
RUN echo "<html><head><title>My Continue Site</title></head><body>Hello my friend Andy!<br> This my Continue project!</body></html>"  >/usr/share/nginx/html/index.html
#COPY ./www/index.html /var/www/html/index.html
EXPOSE 80
