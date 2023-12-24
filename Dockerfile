# Use the official Node.js image as the base image
FROM cypress/base:16.0.0

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Install webpack globally
RUN npm install -g webpack webpack-cli

RUN npm install --save-dev cypress

# Copy the application code to the container
COPY . .

# Expose the port on which the application will run
EXPOSE 5000

# set DISPLAY variable to the IP automatically assigned to WSL2
# set DISPLAY variable to the IP automatically assigned to WSL2
# ENV DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}')

# Build the application in production mode
RUN npm run build

# ENV DISPLAY=:99


# Define the default command to run when the container starts
CMD ["npm", "start-prod"]
