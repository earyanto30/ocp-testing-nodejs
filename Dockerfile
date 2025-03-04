FROM node:slim

LABEL org.opencontainers.image.source=https://github.com/earyanto30/ocp-testing-nodejs
LABEL org.opencontainers.image.description="Node JS Example Hello World"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /usr/src/app
COPY . .
RUN npm install --only=production && chmod -R 777 /usr/src/app 
CMD [ "node", "src/index.js" ]
EXPOSE 8080
