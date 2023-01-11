FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
EVN PATH /usr/src/app/node_modules/.bin:#PATH

COPY package*.json /usr/src/app

RUN npm config set strict-ssl false

RUN npm install

COPY . /usr/src/app

EXPOSE 4000

CMD ["npm", "start"]