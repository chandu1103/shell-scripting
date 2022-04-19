FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY ./new/ /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
