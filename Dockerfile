# Use a lightweight Nginx image as the base image
FROM nginx:alpine

# Copy the build files from the previous stage into the image
COPY --from=builder /app/build /usr/share/nginx/html

# Expose port 80 for the NGINX server
EXPOSE 80

# Start the NGINX server when the container starts
CMD ["nginx", "-g", "daemon off;"]