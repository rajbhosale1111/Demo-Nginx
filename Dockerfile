FROM nginx:latest

# Copy the custom nginx.conf to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 8080 to match Cloud Run’s expected port
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

