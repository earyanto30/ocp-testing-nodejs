FROM node:slim
WORKDIR /usr/src/app
COPY . .
RUN npm install --only=production && chmod -R 777 /usr/src/app 
CMD [ "node", "src/index.js" ]
EXPOSE 8080