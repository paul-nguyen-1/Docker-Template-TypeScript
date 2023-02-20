# Dockerfile
# Pull the base image
FROM node:13.12.0-alpine
# Set the working directory
WORKDIR /Users/swaggy/Desktop/captcha-security
# Copy app dependencies to container
COPY ./package*.json ./
#Install Globals
RUN npm install --save-dev sass
# Install dependencies
RUN npm install
# Copy app files
COPY . .
# Add `/app/node_modules/.bin` to $PATH
ENV PATH /captcha-security/node_modules/.bin:$PATH
# Build prod
RUN ["npm", "run", "build"]
# Deploy app for local development
CMD npm start --host 0.0.0.0 --port 3000 --disableHostCheck true