# Step 1: Use the official Nginx image as the base
FROM nginx:alpine

# Step 2: Remove the default nginx.conf provided by the Nginx image
RUN rm /etc/nginx/conf.d/default.conf

# Step 3: Copy your custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Step 4: Expose the port that Nginx will listen on
EXPOSE 80

# Step 5: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
