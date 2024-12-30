FROM docker.io/ubuntu
RUN apt update -y
RUN apt install nginx -y
# Configure Apache2 to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/nginx/nginx.conf
EXPOSE 8080
CMD nginx
