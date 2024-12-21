# Use the official Nginx base image
FROM nginx:latest


# Copy the build files from your repository to the Nginx HTML directory
COPY build/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

