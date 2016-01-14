FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/static-host
WORKDIR /usr/src/static-host

# Install app dependencies
COPY package.json /usr/src/static-host/
RUN npm install

# Bundle app source
COPY . /usr/src/static-host

EXPOSE 8090

CMD [ "npm", "start" ]