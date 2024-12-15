# Use an official Node.js runtime as the base image (for a Node.js app)
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 85 for the application
EXPOSE 85

# Command to run the app
CMD ["npm", "start"]
