# Use Amazon Linux 2023 base image
FROM amazonlinux:2023

# Install Apache (httpd)
RUN dnf update -y && \
    dnf install -y httpd && \
    dnf clean all

# Copy website content
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
