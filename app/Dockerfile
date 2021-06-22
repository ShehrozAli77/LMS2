FROM node:14

WORKDIR /app

COPY /app/package.json .

RUN npm install

COPY /app .

RUN ["chmod +x" "./wait-for-it.sh"]

EXPOSE 3000

CMD [ "npm", "start" ]
#ENTRYPOINT bash ./wait-for-it.sh -t 30 mysqldb:3306 -- npm start
