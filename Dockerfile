# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy the production-ready build from the dist directory to the Nginx directory
COPY dist /usr/share/nginx/html

# Expose port 80 to make it accessible
EXPOSE 80

# The default command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
