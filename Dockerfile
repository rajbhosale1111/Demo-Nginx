FROM nginx:latest

# Copy custom index.html
COPY index.html /usr/share/nginx/html/index.html

# Copy custom nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 for Cloud Run
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
