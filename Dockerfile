FROM ubuntu:latest

# Install updates and Apache
RUN apt-get update && apt-get install -y apache2

EXPOSE 80

# Start the web server
CMD ["apache2ctl", "-D", "FOREGROUND"]
