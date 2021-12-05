FROM node:10.13.0-alpine

# Create Directory for the Container
WORKDIR /usr/src/app

# Only copy the package.json file to work directory
COPY package.json .

# Install all Packages
RUN npm install

# Copy all other source code to work directory
ADD . /usr/src/app

# Need to setup env variable

EXPOSE 3000:3000

# Start
CMD [ "npm", "start" ]
