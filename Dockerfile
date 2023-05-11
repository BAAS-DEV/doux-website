FROM nginx

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy the website files to the appropriate directory
COPY . /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80
