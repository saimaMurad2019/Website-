# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory to the default directory for Nginx
WORKDIR /usr/share/nginx/html

# Copy the entire project directory into the Nginx HTML folder
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
