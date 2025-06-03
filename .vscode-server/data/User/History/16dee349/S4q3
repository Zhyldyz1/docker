# Use the official Node.js 20 image as the base
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json ./app/package.json

# Install the dependencies
RUN npm install

# Copy the application code into the container
COPY app.js ./app/app.js

# Expose the port on which the application will run
EXPOSE 3000

# Set the command to run when the container starts
CMD ["npm", "start"]