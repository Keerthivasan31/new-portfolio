FROM amazonlinux:2023

# Install nginx
RUN dnf install -y nginx && dnf clean all

# Copy website content
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Run nginx in the foreground (required for containers)
CMD ["nginx", "-g", "daemon off;"]