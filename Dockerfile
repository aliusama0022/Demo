# Use nginx as base image
FROM nginx:alpine

# Remove default websites
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]