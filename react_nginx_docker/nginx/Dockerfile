FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./new/ /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
