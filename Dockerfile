# Use an official Node.js runtime as a parent image
FROM node:22-slim

# Install OpenSSL
RUN apt-get update -y && apt-get install -y openssl

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and the package-lock.json files to the container
COPY package*.json .

# Install the dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Install Prisma
RUN npx prisma generate

# Expose the port that the app runs on
EXPOSE 8080

# Define the command to run your application
CMD ["node", "./src/server.js"]
