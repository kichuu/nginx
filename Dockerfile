FROM nginx:alpine

# Remove the default config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom config into the right place
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
