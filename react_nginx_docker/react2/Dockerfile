FROM node:13.12.0-alpine as build
WORKDIR /app
COPY . .
ENV PATH /app/node_modules/.bin:$PATH
RUN npm install --silent
RUN npm run build
CMD ["npm", "start"]

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /app/build .
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
EXPOSE 8024
CMD ["nginx", "-g", "daemon off;"]
