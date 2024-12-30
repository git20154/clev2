FROM docker.io/ubuntu
RUN apt update -y
RUN apt install apache2 -y
# Configure Apache2 to listen on port 8080
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
EXPOSE 8080
CMD service apache2 start
