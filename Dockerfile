FROM nginx:alpine

# Remove default nginx site
RUN rm -rf /usr/share/nginx/html/*

# Copy HTML files into the container
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
