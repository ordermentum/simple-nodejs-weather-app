FROM node:boron

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json

RUN npm install -g ejs 
RUN npm install -g express
RUN npm install 

COPY . /usr/src/app

EXPOSE 3000

CMD ["npm", "start"]