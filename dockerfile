FROM nginx:alpine

# Copy the custom Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 (Nginx default)
EXPOSE 80
