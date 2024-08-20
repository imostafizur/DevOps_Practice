# Use a lightweight web server like nginx
FROM nginx:alpine

# Remove the default nginx index page
RUN rm /usr/share/nginx/html/*

# Copy your HTML files to the nginx directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
