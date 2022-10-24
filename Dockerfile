# Use the official image as a parent image.
FROM node:12.13.1

# Set the working directory.
WORKDIR /usr/src/app

# Copy the package json files from local host to container working directory.
COPY package*.json ./

# Run the command inside your image filesystem.
RUN npm install --only=prod

#Create server and dist folders
RUN mkdir public

# Copy the app's source code from your host to your image filesystem.
COPY public ./public
COPY server.js ./

# Run the specified command within the container.
CMD npm run startapp
