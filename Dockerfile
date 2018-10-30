FROM node:10.3.0-alpine

RUN npm install -g heroku
CMD tail -f /dev/null
