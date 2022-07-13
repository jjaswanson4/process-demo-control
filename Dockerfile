FROM registry.redhat.io/ubi9/nodejs-16:latest

COPY package.json .

RUN npm install --only=production

COPY settings.js /data/settings.js

COPY flows.json /data/flows.json

CMD ["npm", "start"]
