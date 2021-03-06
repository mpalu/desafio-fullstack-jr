FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --no-optional

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]