FROM node:18.2.0

ARG WEB_SERVER_NODE_APP_PORT=7007
ENV WEB_SERVER_NODE_APP_PORT=$WEB_SERVER_NODE_APP_PORT

# Create app directory
WORKDIR /node-app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --omit=dev

COPY src/* ./src/

EXPOSE $WEB_SERVER_NODE_APP_PORT

CMD [ "npm", "run", "server" ]
