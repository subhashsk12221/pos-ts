# check if the AWS flag is se use x86_64 or arm64
# Use the official Node.js 14 image as the base image
FROM --platform=x86_64 node:20 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the application will listen on
EXPOSE 8000

# Start the application
CMD ["npm", "run", "start"]