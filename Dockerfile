# Dockerfile

# Use an official Node runtime as a parent image
FROM node:20.10.0

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN yarn

# Bundle app source
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

CMD ["yarn", "dev"]
