# Use the official ubuntu image as the base image
FROM ubuntu

#  Update the package list amd install Apache2
RUN apt-get update -y && \
    apt-get install apache2 -y

# Copy the index.html file to the Apache root directory
COPY index.html /var/www/html/

#Start the Apache2 service in the foreground
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
