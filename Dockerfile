#FROM httpd:latest
#COPY index.html /usr/local/apache2/htdocs
#EXPOSE 80


FROM ubuntu:latest

# Install Snort dependencies
RUN apt-get update && \
    apt-get install -y snort

# Copy Snort configuration files
COPY snort.conf /etc/snort/snort.conf

# Set the entry point command
CMD ["snort", "-c", "/etc/snort/snort.conf", "-i", "eth0"]

