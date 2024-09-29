# Use the official Nginx image as a base image
FROM nginx:alpine

# Copy the index.html file to the Nginx directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]