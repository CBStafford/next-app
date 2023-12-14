# Use the official Node.js image as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm i -g npm

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that Next.js will run on
EXPOSE 3000

# Set the command to run the application
CMD ["npm", "start"]