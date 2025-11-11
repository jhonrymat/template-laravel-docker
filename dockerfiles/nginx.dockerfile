FROM nginx:stable-alpine
WORKDIR /etc/nginx/conf.d
COPY nginx/prod.conf .
RUN mv prod.conf default.conf
WORKDIR /var/www/html
COPY src .

# cambiar esto en local
# COPY nginx/prod.conf .
# RUN mv prod.conf default.conf