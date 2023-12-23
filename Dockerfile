# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Install webpack globally
RUN npm install -g webpack webpack-cli

# Copy the application code to the container
COPY . .

# Expose the port on which the application will run
EXPOSE 5000

# Build the application in production mode
RUN npm run build

# Define the default command to run when the container starts
CMD ["npm", "start-prod"]
