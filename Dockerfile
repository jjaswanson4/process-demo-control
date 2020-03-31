## docker build -t tbiernat/process-demo-control .

# RUN git clone https://github.com/TimBiernat/process-demo-control.git
# RUN cd process-demo-control

FROM nodered/node-red:latest-minimal

COPY package.json .
RUN npm install --only=production

COPY settings.js /data/settings.js
# COPY flows_cred.json /data/flows_cred.json
COPY flows.json /data/flows.json

CMD ["npm", "start"]