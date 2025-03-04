FROM nginx:latest

# Copy custom index.html to the NGINX default web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 8080 for Cloud Run
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

