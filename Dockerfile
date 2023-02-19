# Dockerfile
# Pull the base image
FROM node:13.12.0-alpine
# Set the working directory
WORKDIR /captcha-security
# Copy app dependencies to container
COPY ./package*.json ./
# Install dependencies
RUN npm install
# Copy app files
COPY . .
# Build prod
RUN npm run build
# Add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# Deploy app for local development
CMD npm start --host 0.0.0.0 --port 3000 --disableHostCheck true