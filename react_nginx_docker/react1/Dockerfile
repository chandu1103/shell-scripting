FROM node:13.12.0-alpine
WORKDIR /app
COPY . .
RUN npm install --silent
RUN npm run build

CMD ["npm", "start"]
